class TasksController < ApplicationController

  def show #id
    @task = Task.find(params[:id])
  end

  def index #all
    @tasks = Task.all
  end

  def new
    @task = Task.new(strong_task_params)
  end

  def create
    @task = Task.new(strong_task_params)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(strong_task_params)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def strong_task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
