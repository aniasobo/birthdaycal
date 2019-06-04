require 'spec_helper'
require 'birthday'

RSpec.describe Birthday do
  before(:each) do
    @person = Birthday.new("Cat", "01.01.01")
  end

  it 'takes two arguments when initialized' do
    expect(@person).to have_attributes(:name => "Cat", :date => "01.01.01")
  end

  it 'returns args as ary' do
    expect(@person.return_as_ary).to eq ["Cat", "01.01.01"]
  end

 # it 'returns the name' do
 #   expect(@person.return_name).to eq "Cat"
 # end

#  it 'returns the date' do
#    expect(@person.return_date).to eq "01.01.01"
#  end

end
