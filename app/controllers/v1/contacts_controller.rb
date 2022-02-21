class V1::ContactsController < ApplicationController
  include V1::Contacts::Response
  def index

    @contacts = Contact.all

    render json: @contacts, status: :ok
  end

  def show
    @contact = Contact.where(id: params[:id])
    render json: @contact, status: :ok
  end 


  def create
    @contact = Contact.new(contact_params)
    create_and_render_contact(@contact) || render_invalid_response
    # @contact.save!
    # render json: @contact.as_json(only: [:name, :email, :phone_number]), status: :created
    # render :create, status: :created 
  end

  def destroy 
    @contact = Contact.where(id: params[:id])
    if @contact.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :phone_number, :organization_id)
    end
end
