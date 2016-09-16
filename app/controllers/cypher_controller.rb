require 'cypher'

class CypherController < ApplicationController

  def encode
    cypher = Cypher.new(@lib)
    @seed = cypher.seed
    cypher.encode(@input)
  end

  def decode
    cypher = Cypher.new(@lib)
    @seed = params[:seed].to_i
    cypher.decode(@input)
  end

  def index
    @lib = params[:lib]
    @input = params[:cypher_input]
  end

end
