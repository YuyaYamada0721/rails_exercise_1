class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      redirect_to new_contact_path, notice:"内容を送信しました！"
    else
      render :new
    end
  end
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :content)

    end
end
