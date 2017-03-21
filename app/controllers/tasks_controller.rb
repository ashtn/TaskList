class TasksController < ApplicationController
  def index
    @tasks = [
      "Fork and clone this repository to your computer",
      "Create a new Rails application using rails new",
      "Create a `Tasks` controller",
      "Create a route to view the task `index` page",
      "Create a controller action for the task `index` page which contains an array of hard-coded tasks",
      "Create an ERB view to display the tasks from the controller action"
    ]
  end
end
