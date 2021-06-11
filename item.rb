class Item
  def self.valid_date?(str)
    arr = str.split("-")
    p arr

    if arr[0].size != 4 || !(1..12).include?(arr[1].to_i) || !(1..31).include?(arr[2].to_i)
      return false
    end
    true
  end

  def initialize(title, deadline, description)
    @title = title
    raise "Incorrect date." unless Item.valid_date?(deadline)
    @deadline = deadline
    @description = description
  end

  attr_accessor :title, :description
  attr_reader :deadline

  def deadline=(deadline)
    raise "Incorrect date." unless Item.valid_date?(deadline)
    @deadline = deadline
  end
end
