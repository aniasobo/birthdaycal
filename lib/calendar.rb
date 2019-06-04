require 'birthday'

class Calendar

  attr_reader :list

  def initialize
    @list = []
  end

  def add(name, date)
    birthday = Birthday.new(name, date)
    @list << birthday.return_as_ary
  end

  def read_calendar
    @list.each do |name, birthday|
      puts "#{name}\'s birthday is #{birthday}"
    end
  end

end
