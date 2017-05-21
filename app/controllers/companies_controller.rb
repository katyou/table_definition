class CompaniesController < ApplicationController
  before_action :user_login

  def show
    @company = Company.find(params[:id])
  end

  def new
  end

  def new_user
    @user = User.new
  end

  def create_user
  end

  def created
  end

  def edit
  end

  def update
  end

  private
  def user_login
    if !current_user
      redirect_to user_session_path, notice: "ログインしてください"
    end
  end
end
