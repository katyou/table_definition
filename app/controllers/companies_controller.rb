class CompaniesController < ApplicationController
  before_action :user_login
  before_action :company_login, only: [:show, :edit, :new_user, :new]

  def show
    @company = Company.find(params[:id])
  end

  def new
  end

  def users_index
    if current_user.admin?
      @users = User.where(:company_id => current_user.company_id)
    else
      redirect_to company_path(current_user.company_id)
    end
  end

  def new_user
    @user = User.new
  end

  def create_user
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save!
        format.html{redirect_to users_index_company_path, notice: "ユーザーを登録しました"}
        format.json{}
      else
        format.html{render 'new_user'}
      end
    end
  end

  def create
  end

  def edit
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:name, :status, :password, :email, :company_id, :password_confirmation)
  end

  def user_login
    if !current_user
      redirect_to user_session_path, notice: "ログインしてください"
    end
  end

  def company_login
    unless current_user.company_id == params[:id].to_i
      redirect_to root_path
    end
  end
end
