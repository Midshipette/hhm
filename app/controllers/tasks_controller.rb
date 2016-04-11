class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :set_contract
  before_action :set_flat, except: [:update]
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.where(contract_id: @contract.id)

  end

  # GET /tasks/1
  # GET /tasks/1.json

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit


  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def status
      @task = Task.find(params[:task_id])
      if current_owner || (current_renter && (@task.owner == "renter"))
        if @task.status == "open"
          if @task.document_id
            @task.status = "awaiting doc"
            message =  { notice: "Please now upload a document as proof." }
          else
            @task.status = "done"
            message =  { notice: "Congrats, one task down!" }
          end
        else
          @task.status = "open"
          message = { alert: 'You have re-opened the action...' }
        end
         @task.save
      else
        message = { alert: "You don't have the rights to update the status of the task"}
      end
        redirect_to flat_tasks_path(@flat),message
  end

  def update

    respond_to do |format|
      if @task.update(task_params)
        @contract = @task.contract
        @flat = @contract.flat
        format.html { redirect_to flat_tasks_path(@flat), notice: 'Task was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

     def set_contract
      @contract = Contract.find_by(active: "Active", flat_id: params[:flat_id])
    end

     def set_flat
      @flat = Flat.find(params[:flat_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:status, :name, :description, :due_date, :contract_id, :owner)
    end
end
