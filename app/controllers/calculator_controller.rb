class CalculatorController < ApplicationController

  def index
    @algos = Algo.pluck(:name)
  end

  def calculate
    @truck = Truck.create(:name => params[:name], :model_year => params[:model_year], :m => params[:m], :m2 => params[:m2], :b => params[:b], :c => params[:c], :d => params[:d], :e => params[:e], :f => params[:f], :g => params[:g], :h => params[:h], :i => params[:i])
    @value = Value.create(:truck_id => @truck.id, :ts => Time.now, :estimate => @truck.calculate(params[:algo]))
    redirect_to show_est_url(@value.id)
  end

  def show
    @value = Value.find(params[:id])
  end

  def update
  end

end