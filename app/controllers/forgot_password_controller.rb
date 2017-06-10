class ForgotPasswordController < ApplicationController
	def new
	end
   
    def find_user
    	debugger

    	@user = User.find_by_email(params[:email])
    	if @user
    		UserMailer.forgot_password(@user).deliver
    		flash[:notice] = "Forget password link sended to yopur email id"
        else
        	flash[:danger] = "please provide valid email"
        	render 'new'
    	end
    end

end
