require 'spec_helper'

describe Newsletter do
  it 'has a valid factory' do
    FactoryGirl.build(:newsletter).should be_valid
  end
end
