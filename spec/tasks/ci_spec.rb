# encoding: UTF-8

require 'spec_helper'

describe 'rake ci' do
  include_context 'rake'

  its(:prerequisites) { should include 'rubocop' }
  its(:prerequisites) { should include 'spec' }
end
