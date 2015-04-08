class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :profile]

  
  def index
  end

  def profile
    @user = current_user
  end

  def dashboard
    if current_user.admin?
      @users = User.all.paginate(:page => params[:page], :per_page => 25)
    else
      redirect_to players_path
    end
  end

  
end
