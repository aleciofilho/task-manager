class TaskRepository
  def initialize
    @tasks = []
  end

  def create(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  # def mark_as_done(index)
  #   task = find(index)
  #   task.mark_as_done!
  # end

  def destroy(index)
    @tasks.delete_at(index)
  end
end