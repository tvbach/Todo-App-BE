class TasksController < ApplicationController
    def index
        @tasks = Task.active
    end

    def create
        @task = Task.new(task_params)
        @task.save
    end

    def update
        @task = Task.find params[:id]
        @task.update(status: false)
    end

    private

    def task_params
        params.require(:task).permit(:title, :sub_title, :priority, :due_date)
    end
end
