require 'spec_helper'
require 'birthday'

RSpec.describe Birthday do
  before(:each) do
    @person = Birthday.new("Cat", "2001.01.01")
  end

  it 'takes two arguments when initialized' do
    expect(@person).to have_attributes(:name => "Cat", :date => "2001.01.01")
  end

  it 'returns args as ary' do
    expect(@person.return_as_ary).to eq ["Cat", "2001.01.01"]
  end

end
