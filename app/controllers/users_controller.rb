class UsersController < ApplicationController

  respond_to :json

  def index
    @users = params[:id] ? User.where('id in (?)', params[:id].split(",")) : User.all
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      head :created
    else
      head :unprocessable_entity
    end
  end 

  def update
    @user = User.where('id = ?', params[:id]).take
    
    if @user
      if @user.update(user_params)
        head :ok
      else
        head :unprocessable_entity
      end
    else head :not_found
    end
  end

  def destroy
    render text: "Destroying user #" + params[:id]
    @user.destroy if @user = User.where('id = ?', params[:id]).take

    head :no_content
  end 

  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end