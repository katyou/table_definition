class ColumnsController < ApplicationController
  before_action :user_login

  def index
    @columns = Column.where(:table_id => params[:id])
  end

  def new
    @column = Column.new
  end

  def create
    @column = Column.new
    respond_to do |format|
      if @column.save(column_params)
        format.html(redirect_to company_project_table_path, noitce: "登録しました")
        format.json()
      else
        render 'new'
      end
    end
  end

  def edit
    @column = Column.find(params[:id])
  end

  def update
    @column = Column.new
    respond_to do |format|
      if @column.save(column_params)
        format.html(redirect_to company_project_table_path, notice: "編集しました")
        format.json()
      else
        render :edit
      end
    end
  end

  private
  def column_params
    params.require(:column).permit(:physical_name, :logical_name, :data_type, :null_false, :default_value. :table_id, :data_type, :logical_name)
  end

  def user_login
    if !current_user
      redirect_to user_session_path, notice: "ログインしてください"
    end
  end
end
