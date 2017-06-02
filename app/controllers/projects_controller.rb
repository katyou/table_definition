class ProjectsController < ApplicationController
  before_action :user_login

  def index
  end

  def show
    @project = Project.find(params[:id])
    @first_table = Table.where(:project_id => @project).first
    @tables = Table.where(:project_id => @project)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  #ajax処理曜のmethod
  def select_table
    select_table = params[:data]
    @first_table = Table.find(select_table)
  end

  private
  def user_login
    if !current_user
      redirect_to user_session_path, notice: "ログインしてください"
    end
  end
end
