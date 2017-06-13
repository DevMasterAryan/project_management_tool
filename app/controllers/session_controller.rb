class SessionController < ApplicationController
  def new
  end
  def create
  	user  = User.find_by_email(params[:session][:user_name].downcase)
    #mail = User.find_by_email(params[:session][:user_name].downcase)
  	if user && user.authenticate(params[:session][:password])
  		
  		log_in user
  		flash[:success] = "login success"
  		redirect_to user_path(current_user), sucess: "login success" 
  	   
  	else
  		flash[:danger]  = "invalid user or password..retry again...!!!"
  		render 'new'
  	end
  end

  def destroy
    log_out
    redirect_to new_session_path  	
  end
end
