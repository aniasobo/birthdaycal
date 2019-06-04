class Birthday

  attr_reader :name
  attr_reader :date

  def initialize(name, date)
    @name = name
    @date = date
  end

  def name
    @name
  end

  def date
    @date
  end

end
