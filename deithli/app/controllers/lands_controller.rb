class LandsController < ApplicationController
  def index
    @land = Land.all
  end

  def create
    @land = Land.new(land_params)
    
    @land.save
  end

  def 
    
  end
end
