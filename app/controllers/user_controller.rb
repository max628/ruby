class UserController < ApplicationController
  def index
    @users = User.all
  end

  def delete
    User.find(params[:id]).destroy
    redirect_to user_index_path
  end

  def new
    @user = User.new
  end

  def user_params
    params.require(:user).permit(:email, :password, :role, :password_confirmation, :name)
  end

  def create
  	@user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end 
end
