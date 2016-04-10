class CostsController < ApplicationController
  def index
    @contract = Contract.find(params[:contract_id])
  	@costs = Cost.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
