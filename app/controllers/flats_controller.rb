class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update,  :destroy]

  # GET /flats
  # GET /flats.json
  def index
    @flats = Flat.all.where(owner_id: current_owner.id)
    @contracts = Contract.all
  end

  # GET /flats/1
  # GET /flats/1.json
  def show


  end


  # GET /flats/new
  def new
    @flat = Flat.new
  end

  # GET /flats/1/edit
  def edit
  end

  # POST /flats
  # POST /flats.json
  def create
    @flat = Flat.new(flat_params)
    @flat.owner_id = current_owner.id

    respond_to do |format|
      if @flat.save
        format.html { redirect_to @flat, notice: 'Flat was successfully created.' }
        format.json { render :show, status: :created, location: @flat }
      else
        format.html { render :new }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flats/1
  # PATCH/PUT /flats/1.json
  def update
    respond_to do |format|
      if @flat.update(flat_params)
        format.html { redirect_to @flat, notice: 'Flat was successfully updated.' }
        format.json { render :show, status: :ok, location: @flat }
      else
        format.html { render :edit }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flats/1
  # DELETE /flats/1.json
  def destroy
    if @flat.contracts.any? { |c| c.active == 'Yes' }
      redirect_to flat_path(@flat), alert: 'This flat has an active contract so that you cannot delete it'
    else
      @flat.destroy
      redirect_to flats_path, notice: 'Flat was successfully destroyed.'
    end
end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat
      @flat = Flat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_params
      params.require(:flat).permit(:owner_id, :flat_type, :flat_name, :floor, :flat_number, :address, :city, :syndicate, :postal_code, :description, :country, :loan_cost, :tax_cost)
    end
  end
