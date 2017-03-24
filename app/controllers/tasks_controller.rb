class TasksController < ApplicationController

  #create
  def create

    task = Task.create task_params
    unless task.id == nil
      redirect_to tasks_path
    end
  end

  def new
    @task = Task.new
  end

  #read
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  #update
  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])

    task.title = task_params[:title]
    task.name = task_params[:name]
    task.description = task_params[:description]

    if task.save
      redirect_to tasks_path(task.id)
    end
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end


  private

  def task_params
    params.require(:task).permit(:name, :description, :title)
  end
end
