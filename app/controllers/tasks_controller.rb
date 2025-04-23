class TasksController < ApplicationController
    def index
      filter = params[:filter]
      sort_order = params[:sort] == "asc" ? :asc : :desc
      @total_tasks = Task.count
      @active_tasks_count = Task.where(done: false).count
      @done_tasks_count = Task.where(done: true).count
      @tasks = case filter
      when "done"
                 Task.where(done: true)
      when "not_done"
                 Task.where(done: false)
      else
                 Task.all
      end.order(timestamp: sort_order)
    end

    def new
      @task = Task.new
    end

    def create
      @task = Task.new(task_params)
      if @task.save
        flash[:notice] = "Task has been created."
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
        flash[:notice] = "Task has been updated."
        redirect_to tasks_path
      else
        render :edit
      end
    end

    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      flash[:notice] = "Task has been deleted."
      redirect_to tasks_path
    end

    def mark_done
      @task = Task.find(params[:id])
      @task.update(done: true)
      flash[:notice] = "Task has been marked as done."
      redirect_to tasks_path
    end

    def mark_undone
      @task = Task.find(params[:id])
      @task.update(done: false)
      flash[:notice] = "Task has been marked as undone."
      redirect_to tasks_path
    end
    private

    def task_params
      params.require(:task).permit(:title, :done, :timestamp, :category_id)
    end
end
