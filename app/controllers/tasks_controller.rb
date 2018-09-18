TASKS = [
  { id: 1, name: "Read POODR", description: "Read Ch4 and try not to cry", completion_date: "2018-09-30" },
  { id: 2, name: "Refactor Hotel", description: "Refactor and try not to cry", completion_date: "2018-09-30"}
]

class TasksController < ApplicationController
  def index
    @tasks= TASKS
  end

  def show
    @id = params[:id]
    @task = TASKS.find do |task|
      task[:id] == @id.to_i
    end
  end

end
