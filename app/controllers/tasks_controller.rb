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

end
