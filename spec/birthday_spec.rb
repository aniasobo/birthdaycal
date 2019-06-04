require 'spec_helper'
require 'birthday'

RSpec.describe Birthday do
  before(:each) do
    @person = Birthday.new("Cat", "01.01.01")
  end

  it 'takes two arguments when initialized' do
    expect(@person).to have_attributes(:name => "Cat", :date => "01.01.01")
  end

  it 'returns the name' do
    expect(@person.name).to eq "Cat"
  end

  it 'returns the date' do
    expect(@person.date).to eq "01.01.01"
  end

end