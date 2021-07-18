class HomeController < ApplicationController
  def index
  end

  def switchprofile
    if session[:role]=='realtor'
      session[:role] = 'househunter'
    else
      session[:role] = 'realtor'
    end
    session[:id] = User.where(email: current_user.email ).where( role: session[:role] ).pluck(:id).take(1).first.to_i
    redirect_to root_path, notice: 'Switched Profile Sucessfully.'
  end
end
