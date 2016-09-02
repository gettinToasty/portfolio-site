class DesignsController < ApplicationController

  def index
    @projects = Design.all
  end

  def show
    @project = Design.find(params[:id])
  end

end
