class CompaniesController < ApplicationController

  def show
    @company = Comapny.find(params[:id])
  end

  def new
  end

  def created
  end

  def edit
  end

  def update
  end
end
