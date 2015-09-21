class TasksController < ApplicationController
  def index
    tasks = Task.all

    respond_to do |f|
      f.html do
        render template: "tasks/index.html.erb", locals:  { all_tasks: tasks }
      end
      f.json do
        render json: tasks.to_json, status: 200
  end

  def show
    task = Task.find(params[:id])

    render template: "tasks/show.html.erb", locals: { task: task }
  end

  def create
  end

  def update
  end

  def destroy
  end
end
