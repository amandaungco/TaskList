TASKS = [
  { id: 1, name: "Read POODR", description: "Read Ch4 and try not to cry", completion_date: "2018-09-30" },
  { id: 2, name: "Refactor Hotel", description: "Refactor and try not to cry", completion_date: "2018-09-30"}
]

class TasksController < ApplicationController
  def index
    @tasks= Task.all
  end

  def show
    id = params[:id]
    @task = Task.find_by(id:id)
  end

  def new
    @task = Task.new
  end

  def edit
    id = params[:id]
    @task = Task.find_by(id:id)
  end

  def update
    @task = Task.find_by(id:params[:id])
    @task.update(task_params)
    if @task.save
      redirect_to task_path
    else
      render :new
    end

  end

  def destroy
    id = params[:id]
    @task = Task.find_by(id:params[:id].to_i)
    @task.destroy
      redirect_to root_path
  end

  def create
    @task = Task.new(task_params)
      if @task.save
        redirect_to root_path
      else
        render :new
      end
  end

  def status
    @task = Task.find_by(id:params[:id])
    if @task.status.class == String
      @task.status = nil
    else @task.status == nil
      @task.status = "Completed on #{Date.today}"
    end
      @task.save
      redirect_to root_path
  end

  private

  def task_params
    return params.require(:task).permit(:name, :description, :completion_date)
  end
end
