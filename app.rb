require_relative 'router'
require_relative 'tasks_controller'
require_relative 'task_repository'
require_relative 'tasks_view'
require_relative 'task'

task_repository = TaskRepository.new
tasks_controller = TasksController.new(task_repository)
router = Router.new(tasks_controller)

router.run