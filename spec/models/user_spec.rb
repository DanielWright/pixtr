require 'spec_helper'

describe User, 'by default' do
  subject { User.create(:email => 'user@example.com', :password => '12345678') }
  it { should have_many :galleries }
end