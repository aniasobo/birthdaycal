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

  # returns a string with current date to the born_today method
  def today_is
    d = DateTime.now
    d.to_s.scan(/[0-9]{4}-[0-9]{2}-[0-9]{2}/)[0] # format: "2019-06-04" 
  end  # .scan(/-[0-9]{2}-[0-9]{2}/)[0] for "-06-05"

  def born_today
    todays_date = Regexp.new(today_is)
    birthdays = []

    @list.each do |name, date|
      if date.match?(todays_date)
        birthdays << name
      end
    end
    birthdays.join(' ')
  end

end
