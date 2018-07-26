class UsersController < ApplicationController
  def create
    @user = User.new(create_params)
    @user.update(status: 0)
    if @user.save
      sign_in @user
      redirect_to root_path
    else
      flash.now[:error] = "Sign up failed!"
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.find(params[:id]).update(update_params)
    redirect_to user_path(params[:id])
  end

  private
  def create_params
    params.require(:user).permit(:owner_name, :email, :password, :dog_name, :breed, :bio)
  end

  def update_params
    params.require(:profile).permit(:dog_name, :owner_name, :bio).reject{|_, v| v.blank?}
  end
end