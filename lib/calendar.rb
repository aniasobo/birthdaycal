require 'birthday'

class Calendar

  attr_reader :name
  attr_reader :birthday

  def initialize
    @list = {}
  end

  def add(name, date)
    birthday = Birthday.new(name, date)
    @list << birthday
  end

  def read_calendar
    @list.each do |name, birthday|
      puts "#{name}\'s birthday is #{birthday}"
    end
  end

end