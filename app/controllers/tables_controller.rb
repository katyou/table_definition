class TablesController < ApplicationController
  before_action :user_login

  def index
  end

  def show
  end

  def user_login
    if !current_user
      redirect_to user_session_path, notice: "ログインしてください"
    end
  end
end
