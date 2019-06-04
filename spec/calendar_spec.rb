require 'spec_helper'
require 'calendar'

RSpec.describe Calendar do

  before(:each) do
    @cal = Calendar.new
  end

  it 'takes name and date and adds them to list' do
    expect(@cal.add("Cat", "01.01.01")).to eq [["Cat", "01.01.01"]]
  end

  it 'takes another name and date set and adds them to existing list' do
    @cal.add("Cat", "01.01.01")
    expect(@cal.add("Dog", "02.02.02")).to eq [["Cat", "01.01.01"], ["Dog", "02.02.02"]]
  end

  it 'displays existing entries each on new line' do
    @cal.add("Cat", "01.01.01")
    @cal.add("Dog", "02.02.02")
    expect(@cal.read_calendar).to eq "Cat's birthday is: 01.01.01\nDog's birthday is: 02.02.02"
  end

end
