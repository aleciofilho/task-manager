class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts "Welcome to Task Manager!"
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "What do you want to do next?"
    puts "1 - Create task"
    puts "2 - List all tasks"
    puts "3 - Mark task as done"
    puts "4 - Remove a task"
    puts "0 - Exit"
  end

  def dispatch(action)
    case action
    when 1
      @controller.add
    when 2
      @controller.list
    when 3
      @controller.mark_as_done
    when 4
      @controller.remove
    when 0
      puts "Goodbye!"
      exit
    else
      puts "Please choose a valid action"
    end
  end
end