class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  # GET /documents
  # GET /documents.json
  def index
    @flat = Flat.find(params[:flat_id])
    @contract = Contract.where(flat_id: params[:flat_id], active: 'Yes')
    @documents = @contract[0].documents
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
    @flat = Flat.find(params[:flat_id])
  end

  # GET /documents/new
  def new
    @flat = Flat.find(params[:flat_id])
    @document = Document.new
    @document.contract_id = Contract.where(flat_id: @flat.id, active: "Yes")[0].id
  end

  # GET /documents/1/edit
  def edit
     @flat = Flat.find(params[:flat_id])
  end

  # POST /documents
  # POST /documents.json
  def create
    @flat = Flat.find(params[:flat_id])
    @document = Document.new(document_params)

    respond_to do |format|
      if @document.save
        format.html { redirect_to flat_documents_path(@flat), notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @document }
      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    @flat = Flat.find(params[:flat_id])
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to flat_documents_path(@flat), notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @flat = Flat.find(params[:flat_id])
    @document.destroy
    respond_to do |format|
      format.html { redirect_to flat_documents_path(@flat), notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:contract_id, :type, :photo, :photo_cache, :expiration_date, :name, :reminder_sent_date, :days_to_reminder)
    end
end
