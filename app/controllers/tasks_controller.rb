class TasksController < ApplicationController
  before_action :set_project
  before_action :set_task, only: [ :show, :edit, :update, :destroy ]

  def index
    @tasks = @project.tasks
  end

  def show
  end

  def new
    @task = @project.tasks.build
  end

  def create
    @task = @project.tasks.build(tasks_params)
    if @task.save
      redirect_to project_path(@project), notice: "Task was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(tasks_params)
      redirect_to project_path(@project), notice: "Task was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to project_path(@project), notice: "Task was successfully deleted."
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_task
    @task = @project.tasks.find(params[:id])
  end

  def tasks_params
    params.require(:task).permit(:name, :status)
  end
end
