class UsersController < ApplicationController
  before_action :username, :score, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:username])
    
    if @user.valid_name?
      session[:username] = @user.username

      redirect_to '/users/1'
    else
      render :new
    end
  end

  def show
  end

  private

  def username
    @username = session[:username]
  end

  def score
    session[:score] = session[:score].nil? ? 0 : session[:score]
    @score = session[:score]
  end
end
