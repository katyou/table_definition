class ColumnsController < ApplicationController
  def index
    @columns = Column.all
  end

  def edit
  end
  
  def update
  end
end
