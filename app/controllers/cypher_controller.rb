require 'cypher'

class CypherController < ApplicationController

  before_action :common_content, :only => [:encode, :decode]

  def encode
    cypher = Cypher.new(@lib)
    @seed = cypher.seed
    @encoded = cypher.encode(@input)
  end

  def decode
    cypher = Cypher.new(@lib)
    @decoded = cypher.decode(@input)
  end

  def index
  end

  def common_content
    @lib = params[:lib]
    @input = params[:cypher_input]
    @seed = params[:seed].to_i
  end

end
