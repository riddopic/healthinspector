# encoding: UTF-8

require 'spec_helper'

describe HealthInspector::Tasks::Rubocop do
  before do
    allow(::RuboCop::CLI).to receive(:run)
  end

  its(:config) { should be_a ::RuboCop::Config }

  describe '#project_config_file' do
    let!(:rubocop_yml) { File.join(Dir.pwd, '.rubocop.yml') }

    it 'should return a local .rubocop.yml if present' do
      expect(subject.project_config_file).to eq rubocop_yml
    end

    it 'should return a .rubocop.yml in a parent directory' do
      FileUtils.cd 'spec'
      expect(subject.project_config_file).to eq rubocop_yml
    end

    it 'should return nil if no file exists' do
      allow(File).to receive(:exist?) { false }
      expect(subject.project_config_file).to be_nil
    end
  end

  describe '#config' do
    it 'contains sane values' do
      expect(subject.config['Style/Documentation']['Enabled']).to be false
      expect(subject.config['AllCops']['Exclude']).not_to be_empty
    end

    it 'disables the NumericLiterals cop' do
      expect(subject.config['Style/NumericLiterals']['Enabled']).to be false
    end
  end
end
