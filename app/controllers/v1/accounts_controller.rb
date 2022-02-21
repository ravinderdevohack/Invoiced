class V1::AccountsController < ApplicationController
  def index
    @accounts = Account.all
    render json: @accounts.as_json, status: :ok
  end

  def create
    @account = current_user.accounts.build(account_params)
    render :create, status: :created
  end

  def update
  end

  def destroy
  end

  private

  def account_params
    params.require(:account).permit(:name)
  end

end
