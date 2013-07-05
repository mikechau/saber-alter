class StaticPagesController < ApplicationController

  def index
    @truck = Truck.new
  end

end