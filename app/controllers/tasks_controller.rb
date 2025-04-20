class TasksController < ApplicationController
    def index
      filter = params[:filter]

      @tasks = case filter
      when "done"
                 Task.where(done: true)
      when "not_done"
                 Task.where(done: false)
      else
                 Task.all
      end

      @active_tasks = @tasks.select { |task| !task.done }
    end

    def new
      @task = Task.new
    end

    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to tasks_path
      else
        render :new
      end
    end

    def edit
      @task = Task.find(params[:id])
    end

    def update
      @task = Task.find(params[:id])
      if @task.update(task_params)
        redirect_to tasks_path
      else
        render :edit
      end
    end

    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to tasks_path, notice: "Task has been deleted."
    end

    def getActiveTasks
      @active_tasks = @tasks.select { |task| !task.done }
    end

    def getDoneTasks
      @done_tasks = @tasks.select { |task| task.done }
    end

    private

    def task_params
      params.require(:task).permit(:title, :done, :timestamp)
    end
end
