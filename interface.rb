require_relative 'task'
require_relative 'task_repository'
require_relative 'tasks_view'
require_relative 'tasks_controller'

repository = TaskRepository.new
controller = TasksController.new(repository)

controller.add
controller.add
controller.list
controller.mark_as_done
controller.remove
controller.list
