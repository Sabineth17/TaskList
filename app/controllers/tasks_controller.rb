# TASKS = [
# {id:1,action:"Clean Room", time:"07:00 pm",description:"house", completion_date:"9/10/2018"},
# {id:3, action:"Prepare for school week", time:"3:00 pm",description:"school", completion_date:"9/12/2018"},
# {id:17,action:"Rest and massage", time:"10:00 am" description:"self-care", completion_date:"9/13/2018"}
# ]


# 2 separate actions in this controller index and show:
#index: show me all of the things...show me all of the TASKS
class TasksController < ApplicationController

  #Asking information for all tasks
  def index
    @banana = Task.all
    # @tasks = TASK -- this is what we had before creating new instances
  end

  # CNN I want to see the details of just one news article
  #whereas as show is showing 1 instance
  def show
    @id = params[:id].to_i
    @task = Task.find_by(id: @id)
    #inherited from ApplicationController
  end

  def new
    @task = Task.new
  end


  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date]) #instantiate a new book
    if @task.save # save returns true if the database insert succeeds
      redirect_to root_path # go to the index so we can see the book in the list
    else # save failed :(
      render :new # show the new book form view again
    end
  end

  def edit
    @task = Task.find_by(id: params[:id].to_i)
  end


  def update
      @task = Task.find_by(id: params[:id].to_i)
      @task.update(name: params[:task][:name],
      description: params[:task][:description],
      completion_date: params[:task][:completion_date])
      redirect_to task_path(@task.id)
  end




end
