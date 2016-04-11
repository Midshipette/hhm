class RentersController < ApplicationController
  before_action :set_renter, only: [:show, :edit, :update, :destroy]

  def index
    @renters = Renter.all
  end

  def all
    @flats = Flat.all.where(owner_id: current_owner.id)
  end

  def new
    @flats = Flat.all.where(owner_id: current_owner.id)
    @flat = Flat.unscoped.find(params[:flat_id])
    @contract = Contract.unscoped.find(params[:contract_id])
    @renter = Renter.new
  end

  def create

    @flats = Flat.all.where(owner_id: current_owner.id)
    @contract = Contract.unscoped.find(params[:contract_id])
    @renter = Renter.new(renter_params)
    @flat = Flat.find(params[:flat_id])



    respond_to do |format|
      if @renter.save
        @contract.renter_id = @renter.id
        @contract.active = 'Pending'
        @contract.save
        format.html { redirect_to flat_path(@flat), notice: 'renter was successfully created.' }
        format.json { render :show, status: :created, location: @renter }
      else

        format.html { render :new , notice: 'Error.' }
        format.json { render json: @renter.errors, status: :unprocessable_entity }
      end
    end


  end

  def show
    @contract = Contract.where(flat_id: params[:flat_id], active: 'Yes')
  end

  def edit

  end

  def update
    respond_to do |format|
      if @renter.update(renter_params)
        format.html { redirect_to @renter, notice: 'renter was successfully updated.' }
        format.json { render :show, status: :ok, location: @renter }
      else
        format.html { render :edit }
        format.json { render json: @renter.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

  end

  private

  def set_renter
    @renter = Renter.find(params[:id])
  end

  def renter_params
    params.require(:renter).permit(:email, :private, :password, :password_confirmation, :last_name, :first_name, :phone_number, :gender, :birthday)
  end

end

