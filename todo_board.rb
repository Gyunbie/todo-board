require_relative "list.rb"

class TodoBoard
  def initialize(label)
    @list = List.new(label)
  end

  def get_command
    print("Enter a command > ")
    cmd, *args = gets.chomp.split(" ")
    case cmd
    when "mktodo"
      @list.add_item(*args)
    when "toggle"
      @list.toggle_item(args[0].to_i)
    when "rm"
      @list.remove_item(args[0].to_i)
    when "up"
      @list.up(*args.map(&:to_i))
    when "down"
      @list.down(*args.map(&:to_i))
    when "swap"
      @list.swap(*args.map(&:to_i))
    when "sort"
      @list.sort_by_date!
    when "purge"
      @list.purge
    when "priority"
      @list.print_priority
    when "print"
      if args.empty?
        @list.print
      else
        @list.print_full_item(args[0].to_i)
      end
    when "quit"
      return false
    else
      puts "You entered a wrong command."
    end
    true
  end

  def run
    while true
      return unless get_command
    end
  end
end

todo = TodoBoard.new("Groceries")
todo.run