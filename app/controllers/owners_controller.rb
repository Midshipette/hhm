class OwnersController < ApplicationController
  before_action :set_owner, only: [:show, :edit, :update, :destroy]

  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)

    respond_to do |format|
      if @owner.save
        format.html { redirect_to owner_path(@owner.id), notice: 'owner was successfully created.' }
        format.json { render :show, status: :created, location: @owner }
      else
        format.html { render :new }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @flats = Flat.all.where(owner_id: current_owner.id)

  end

  def edit

  end

  def update
    respond_to do |format|
      if @owner.update(owner_params)
        format.html { redirect_to @owner, notice: 'owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @owner }
      else
        format.html { render :edit }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

  end

  private

  def set_owner
    @owner = owner.find(params[:id])
  end

  def owner_params
    params.require(:owner).permit(:email, :encrypted_password, :last_name, :first_name, :phone_number, :city, :flat_number, :address, :postal_code, :country)
  end

end
