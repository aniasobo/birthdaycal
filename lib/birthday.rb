require 'timecop'

class Birthday

  attr_reader :name
  attr_reader :date

  def initialize(name, date)
    @name = name
    @date = date
  end

  def return_as_ary
    [@name, @date]
  end

end
