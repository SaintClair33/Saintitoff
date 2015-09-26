class TasksController < ApplicationController

  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      flash[:notice] = "Task created successfully"
    else
      flash[:error] = "Error creating task"
    end
    redirect_to current_user
  end

  def destroy
    @task = current_user.tasks.find(params[:id])

    if @task.destroy
      flash[:notice] = "Task completed successfully"
    else
      flash[:error] = "Error completing task"
    end
    redirect_to current_user
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end
end
