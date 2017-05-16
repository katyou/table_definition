class ProjectsController < ApplicationController
  before_action :user_login

  def index
    @projects = Project.where(company_id: params[:company_id])
  end

  def show
  end

  private
  def user_login
    if !current_user
      redirect_to user_session_path, notice: "ログインしてください"
    end
  end
end
