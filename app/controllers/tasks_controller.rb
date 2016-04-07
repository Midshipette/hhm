class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :status]
  before_action :set_contract
  before_action :set_flat
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

      @task.status = "done"
        respond_to do |format|
          if @task.save
            format.html { redirect_to flat_tasks_path(@flat) , notice: 'Congrats. One task down!' }
          else
            format.html { redirect_to flat_tasks_path(@flat) , alert: 'An error occured' }
          end
        end
    end

  #   if @task.status = "done"
  #      @task.status = "open"
  #      respond_to do |format|
  #         if @task.save
  #           format.html { redirect_to flat_tasks_path(@flat) , notice: 'You have re-opend the action!' }
  #         else
  #           format.html { redirect_to flat_tasks_path(@flat) , alert: 'An error occured' }
  #         end
  #      end
  #   else
  #      @task.status = "done"
  #       respond_to do |format|
  #         if @task.save
  #           format.html { redirect_to flat_tasks_path(@flat) , notice: 'Congrats. One task down!' }
  #         else
  #           format.html { redirect_to flat_tasks_path(@flat) , alert: 'An error occured' }
  #         end
  #       end
  #   end
  # end
  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
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
      @task = Task.find(params[:task_id])
    end

     def set_contract
      @contract = Contract.find_by(active: "Yes", flat_id: params[:flat_id])
    end

     def set_flat
      @flat = Flat.find(params[:flat_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:status, :name, :description, :due_date, :contract_id, :owner)
    end
end
