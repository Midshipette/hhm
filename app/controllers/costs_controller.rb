class CostsController < ApplicationController
  before_action :set_cost, only: [:show, :edit, :update,  :destroy]
  
  def index
    @contract = Contract.find(params[:contract_id])
    @costs = @contract.costs


  end

  def show
    @contract = Contract.find(params[:contract_id])
  end

  def new
    @contract = Contract.find(params[:contract_id])
    @cost = Cost.new
    @cost.contract_id = Contract.where(id: @contract.id, active: "Active")[0].id
  end
  def create
    @contract = Contract.find(params[:contract_id])
    @cost = Cost.new(cost_params)
    #@cost = Contract.where(id: @contract.id, active: "Active")[0]
    @cost.contract_id = @contract.id
    respond_to do |format|
      if @cost.save!
        format.html { redirect_to contract_cost_path(@contract.id, @cost.id), notice: 'Periodical charges were successfully created.' }
        format.json { render :show, status: :created, location: @cost }
      else
        format.html { render :new }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @contract = Contract.find(params[:contract_id])
  end
  def update
    @contract = Flat.find(params[:contract_id])

    respond_to do |format|
      if @cost.update(cost_params)
        format.html { redirect_to contract_cost_path(@contract.id, @cost.id), notice: 'Charges were successfully updated.' }
        format.json { render :show, status: :ok, location: @cost }
      else
        format.html { render :edit }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end



  def openclearsumcosts
    
    @contract = Contract.find(params[:contract_id])
    @costs = @contract.costs
    @open_cleared_costs = @costs.select{ |c| c.cleared == false}
    @owner_sum = 0 
    @renter_private_sum = 0
    @electricity_sum = 0
    @property_mngt_sum = 0 
    @cleaning_sum = 0 
    @elevator_sum = 0
    @water_sum = 0
    @heating_sum = 0
    @months = 0
    @periods = 0
    
    @open_cleared_costs.each do |cost|
      @owner_sum += cost.owner_charge
      @renter_private_sum += cost.renter_charge_private
      @electricity_sum += cost.electricity
      @property_mngt_sum += cost.property_mngt_cost
      @cleaning_sum += cost.cleaning_maintenance
      @elevator_sum += cost.elevator
      @water_sum += cost.water
      @heating_sum += cost.heating
      @months = (cost.end_month_year.month - cost.start_month_year.month) + 1
      @periods += @months


    end

    @renter_cost_total = @renter_private_sum + @electricity_sum + @property_mngt_sum +
    @cleaning_sum + @elevator_sum + @water_sum + @heating_sum
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost
      @cost = Cost.find(params[:id])
    end

    def cost_params
      params.require(:cost).permit(:start_month_year, :end_month_year, :owner_charge, :renter_charge_private,
        :electricity, :property_mngt_cost, :cleaning_maintenance, :elevator, :water, :heating, :paid, :cleared)
    end
end
