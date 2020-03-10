class FirmsController < ApplicationController
  def index
    @firms = Firm.all
  end

  def show
    @firm = Firm.find(params[:id])
  end
end
