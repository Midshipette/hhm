class RentersController < ApplicationController
  before_action :set_renter, only: [:show, :edit, :update, :destroy]

  def index
    @renters = Renter.all
  end

  def new
    @renter = Renter.new
  end

  def create
    @renter = renter.new(renter_params)

    respond_to do |format|
      if @renter.save
        format.html { redirect_to renter_path(@renter.id), notice: 'renter was successfully created.' }
        format.json { render :show, status: :created, location: @renter }
      else
        format.html { render :new }
        format.json { render json: @renter.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @flats = Flat.all.where(renter_id: current_renter.id)

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
    @renter = renter.find(params[:id])
  end

  def renter_params
    params.require(:renter).permit(:email, :private, :encrypted_password, :last_name, :first_name, :phone_number, :gender, :birthday)
  end

end

