class TasksView
  def initialize; end

  def ask_for_description
    puts "What task do you want to do?"
    gets.chomp
  end

  def ask_for_index
    puts "Index?"
    gets.chomp.to_i - 1
  end

  def display_all(tasks)
    tasks.each_with_index do |task, i|
      done = task.done? ? "X" : " "
      # if task.done?
      #   "X"
      # else
      #   " "
      # end
      puts "#{i + 1} - [#{done}] #{task.description}"
    end 
  end
end
