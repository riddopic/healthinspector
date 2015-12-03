# encoding: UTF-8

require 'spec_helper'

describe 'rake default' do
  include_context 'rake'

  its(:prerequisites) { should == ['ci'] }
end
