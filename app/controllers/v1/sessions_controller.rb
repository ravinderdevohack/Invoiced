class V1::SessionsController < ApplicationController
  def create
    # debugger
    @user = User.where(email: params[:email]).first

    if @user && @user.valid_password?(params[:password])
      debugger
      # render json: @user.as_json(only: [:id, :email]), status: :created
      render  :create, status: :created
    else
      # head(:unaurthorized)
      render json: {error: 'invalid_credentials'}, status: :unauthorized
    end
  end

  def destroy
  end
end
