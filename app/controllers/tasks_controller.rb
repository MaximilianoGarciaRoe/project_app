class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @task = Task.new(project: @project)
  end

  def create
    @task = Task.new(tasks_params)
    if @task.save
      redirect_to @task.project, notice: "Task was successfully created."
    else
      render :new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])
    if @task.update(tasks_params)
      redirect_to @task, notice: "Task was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @project = @task.project
    @task.destroy
    redirect_to @project, notice: "Task was successfully deleted."
  end

  private

  def tasks_params
    params.require(:task).permit(:name, :status, :project_id)
  end
end
