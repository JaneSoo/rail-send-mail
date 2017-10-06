class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user_params])
   
      respond_to do |format|
         if @user.save
            # Tell the UserMailer to send a welcome email after save
            ExampleMailer.sample_email(@user).deliver_later
            
            format.html { render action: 'index' , notice: 'User was successfully created.' }
         else
            format.html { render action: 'new' }
         end
         
      end
      
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end
end
