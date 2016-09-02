require 'cypher'

class CypherController < ApplicationController

  def index
    @lib = params[:lib]
    @input = params[:cypher_input]
  end

  def encode
    cypher = Cypher.new(@lib)
    @seed = cypher.seed
    @encoded = cypher.encode(@input)
  end

  def decode
    cypher = Cypher.new(@lib)
    @seed = params[:seed]
    @decoded = cypher.decode(@input)
  end

end
