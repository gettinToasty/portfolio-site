class FashionController < ApplicationController

  def index
    @shots = Shot.all
  end

end
