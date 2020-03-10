class TaxisController < ApplicationController
  def index
    @taxis = Taxi.all
  end

  def show
    @taxi = Taxi.find(params[:id])
  end
end
