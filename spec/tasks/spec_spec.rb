# encoding: UTF-8

require 'spec_helper'

describe 'rake spec' do
  include_context 'rake'

  its(:prerequisites) { should be_empty }
end
