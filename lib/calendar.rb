require_relative 'birthday'

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
    line = []

    @list.each do |name, birthday|
        line << "#{name}\'s birthday is: #{birthday}"
    end
    line.join("\n")
  end

end
