class ColumnsController < ApplicationController
  before_action :user_login

  def index
    @columns = Column.where(:table_id => params[:id])
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
