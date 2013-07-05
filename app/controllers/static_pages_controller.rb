class StaticPagesController < ApplicationController

  def index
    @truck = Truck.new
    render 'trucks/new'
  end

end