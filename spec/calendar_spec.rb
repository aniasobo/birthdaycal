require 'spec_helper'
require 'calendar'

RSpec.describe Calendar do

  it 'is initialized ' do
    cal = Calendar.new
    expect(cal)
  end

end