class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  # GET /documents
  # GET /documents.json
  def index
    @flat = Flat.find(params[:flat_id])
    @contract = Contract.where(flat_id: params[:flat_id], active: 'Active')
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
    @document.contract_id = Contract.where(flat_id: @flat.id, active: "Active")[0].id
  end

  # GET /documents/1/edit
  def edit
     @flat = Flat.find(params[:flat_id])
  end

  # POST /documents
  # POST /documents.json
  def create
    task = Task.find(params[:document][:task_id]) unless params[:document][:task_id].nil? # checks if was coming from task manager

    today = Date.today.strftime('%Y-%m-%d')
    @flat = Flat.find(params[:flat_id])
    @document = Document.new(document_params)

    expiration = params[:document][:expiration]

    @contract = Contract.where(flat_id: @flat.id, active: "Active")[0]
    @document.contract_id = @contract.id

    respond_to do |format|
      if @document.save!
        if !task.nil? && task.status == "awaiting doc"  # if no expiration date, not task created
          task.status = "doc uploaded"
          task.description = task.description + " \(Uploaded on #{today}\)"
          task.save
        end
        if @document.expiration_date # checks if received and expiration date
          if expiration == "Yes"
            @task = Task.create(document_id: @document.id, owner: "renter", name: "update \"#{@document.doc_type}\" document",
            description: "Update document: " + @document.name , due_date: @document.expiration_date, contract_id: @document.contract_id)
            message = "Document and task were successfully created."
          else
            message = "Document was successfully created."
          end
        end
        format.html { redirect_to flat_documents_path(@flat), notice: message }
      else
        format.html { render :new }
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
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @flat = Flat.find(params[:flat_id])
    @task = Task.find_by(document_id: @document.id)

    @document.destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to flat_documents_path(@flat), notice: 'Document was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:contract_id, :doc_type, :type, :attachment, :attachment_cache, :expiration_date, :name, :reminder_sent_date, :days_to_reminder)
    end
end
