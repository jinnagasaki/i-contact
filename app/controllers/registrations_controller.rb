class RegistrationsController < ApplicationController
  def new
  	@user = User.new
    redirect_to tubuyakis_url if logged_in?
  end

  def create
     @user = User.new(params_user)
     
     if @user.save
       redirect_to root_url
     else
       render :new
     end
   end
 
   private
 
   def params_user
     params.require(:user).permit(:name, :email, :password, :password_confirmation)
   end
end
