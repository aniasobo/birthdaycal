require 'spec_helper'
require 'calendar'
require 'date'

RSpec.describe Calendar do

  before(:each) do
    @cal = Calendar.new
  end

  it 'takes name and date and adds them to list' do
    expect(@cal.add("Cat", "2001-01-01")).to eq [["Cat", "2001-01-01"]]
  end

  it 'takes another name and date set and adds them to existing list' do
    @cal.add("Cat", "2001-01-01")
    expect(@cal.add("Dog", "2002-02-02")).to eq [["Cat", "2001-01-01"], ["Dog", "2002-02-02"]]
  end

  describe '#read_calendar' do
    before(:each) do
      @cal.add("Cat", "2001-01-01")
      @cal.add("Dog", "2002-02-02")
    end
  
    it 'displays existing entries each on new line' do
      expect(@cal.read_calendar).to eq "Cat's birthday is: 2001-01-01\nDog's birthday is: 2002-02-02"
    end
  end

  it 'returns current date' do
    today = DateTime.now
    today = today.to_s.scan(/[0-9]{4}-[0-9]{2}-[0-9]{2}/)[0]
    expect(@cal.today_is).to eq today
  end

  describe '#born_today and #birthday_info' do
    before(:each) do
      @date = @cal.today_is
      @cal.add("Birthday boy", @date)
      @cal.add("Cat", "2001-01-01")
    end

    it 'returns people whose birthday is today' do
      expect(@cal.born_today).to eq ["Birthday boy", @date]
    end

    it 'returns a message with the age of the person born today' do
      expect(@cal.birthday_info).to eq "Birthday boy is 0 years old today."
    end
  end
end
