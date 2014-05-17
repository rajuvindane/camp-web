class ContactController < ApplicationController

  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params
    if @contact.save
      flash[:success] = "We'll get back to you as soon as we can."
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :contact_email, :mobile, :message)
  end

end