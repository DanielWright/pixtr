require 'spec_helper'

describe User, 'by default' do
  subject { Factory(:user) }
  it { should have_many :galleries }
end