class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	
    @user  = User.new(user_params)
    
  	if @user.save
      #check_role(@user)
      UserMailer.signup_confirmation(@user).deliver
  	  redirect_to @user
  	else
  	  render 'new'
  	end
  	
  end

  
  def show
  	@user = current_user
  	 
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name,:image, :email, :password, :role )
  end



end