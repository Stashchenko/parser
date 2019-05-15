require_relative '../../app/lib/logfile_parser'

describe 'Test file parser' do
  let(:test_file) { "#{File.expand_path('..', __dir__)}/webserver_test.log" }

  it 'should read from test data' do
    parser = LogfileParser.new(test_file)
    expect(parser.retrieve_data.length).to eq(5)
  end

  it 'should raise exception if no file' do
    expect { LogfileParser.new('') }.to raise_error(ArgumentError)
  end
end
