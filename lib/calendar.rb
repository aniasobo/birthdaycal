require_relative 'birthday'
require 'date'

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

  def today_is
    d = DateTime.now
    d.to_s.scan(/[0-9]{4}-[0-9]{2}-[0-9]{2}/)[0] 
  end

  def born_today
    todays_date = Regexp.new(today_is)
    birthdays = []

    @list.each do |name, date|
      if date.match?(todays_date)
        birthdays << name
        birthdays << date
      end
    end
    birthdays
  end

  def birthday_info
    data = born_today 
    current_year = today_is.scan(/[0-9]{4}/)[0].to_i
    name = data[0]
    age = current_year - data[1].scan(/[0-9]{4}/)[0].to_i
    p "#{name} is #{age} years old today."
  end

end
