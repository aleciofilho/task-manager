class TasksController
  def initialize(repository)
    @view = TasksView.new
    @repo = repository # TaskRepository.new
  end

  def add # Create
    # ask user for description
    description = @view.ask_for_description
    # instantiate a task
    task = Task.new(description)
    # ask repo to store new task
    @repo.create(task)
    # feedback to user
  end

  def list # Read
    # get all tasks from repo
    tasks = @repo.all
    # ask view to display all tasks
    @view.display_all(tasks)
  end
  
  def mark_as_done # Update
    # list tasks
    list
    # ask user for index
    index = @view.ask_for_index
    # find task based on index (call repo)
    task = @repo.find(index)
    # mark task as done
    task.mark_as_done!

    # Last step with repo updating the task
    # @repo.mark_as_done(index)
  end

  def remove # Destroy
    # list tasks
    list
    # ask user for index
    index = @view.ask_for_index
    # destroy based on index (call repo)
    @repo.destroy(index)
  end
end