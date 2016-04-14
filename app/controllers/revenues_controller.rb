class RevenuesController < ApplicationController
  before_action :set_revenue, only: [:show, :edit, :update,  :destroy]


  def show
  end

  def new
  end
  def create
    @contract = Contract.find(params[:contract_id])
    @revenue = Revenue.new(revenue_params)
    #@cost = Contract.where(id: @contract.id, active: "Active")[0]
    @revenune.contract_id = @contract.id
    respond_to do |format|
      if @revenue.save!
        format.html { redirect_to contract_revenues_path(@contract.id, @revenue.id), notice: 'Periodical charges were successfully created.' }
        format.json { render :show, status: :created, location: @revenue }
      else
        format.html { render :new }
        format.json { render json: @revenue.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @contract = Contract.find(params[:contract_id])
    @revenues = @contract.revenues
  end

  def edit
  end

  def update
   
    @revenue.paid == true

    respond_to do |format|
      if @revenue.save
        format.html { redirect_to contract_revenues_path(@contract.id, @revenue.id), notice: 'Rent payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @revenue }
      else
        format.html { render :edit }
        format.json { render json: @revenue.errors, status: :unprocessable_entity }
      end
    end
  end






  private

    def set_revenue
      @revenue = Revenue.find(params[:id])
    end
end
