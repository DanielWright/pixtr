require 'spec_helper'

describe Gallery, 'by default' do
  subject { Factory(:gallery) }
  it { should belong_to :user }
  it { should validate_presence_of :title }
end
