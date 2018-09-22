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
    @tasks = Task.all
    # @tasks = TASK -- this is what we had before creating new instances
  end

# CNN I want to see the details of just one news article
#whereas as show is showing 1 instance
  def show
    @id = params[:id]
    @task = Task.find(@id)
    #inherited from ApplicationController
  end 
end
