class FashionController < ApplicationController

  def index
    @shots = Shots.all
  end

end
