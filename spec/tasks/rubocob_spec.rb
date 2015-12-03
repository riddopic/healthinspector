# encoding: UTF-8

require 'spec_helper'

describe 'rake rubocop' do
  include_context 'rake'

  let(:rubocop) { double('rubocop') }

  before do
    allow(HealthInspector::Tasks::Rubocop).to receive(:new) { rubocop }
  end

  its(:prerequisites) { should be_empty }

  it 'delegates to ::Rubocop.new.run' do
    expect(rubocop).to receive(:run)
    subject.invoke
  end
end
