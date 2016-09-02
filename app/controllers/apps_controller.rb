class AppsController < ApplicationController

  def index
    @apps = App.all
  end

  def cypher
  end

  def sketch
  end

end
