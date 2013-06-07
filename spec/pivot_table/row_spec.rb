require "spec_helper"

module PivotTable
  describe Row do

    let(:klass) { Row }

    before { @instance = klass.new }

    it { should respond_to :header }
    it { should respond_to :data }
    it { should respond_to :total }

    context 'initialize with hash' do
      subject { klass.new(header: 'header', data: 'data')}

      its(:header) { should == 'header' }
      its(:data) { should == 'data' }
    end

  end
end
