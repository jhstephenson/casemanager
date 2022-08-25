class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end 

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
  

  private
  def user_params
    params.require(:user).permit(:name_first, :name_middle, :name_last, :name, :initials, 
                                  :phone_office, :phone_cell, :phone_other,
                                  :email, :password, :password_confirmation, :role,
                                  :date_of_birth)
  end
end
