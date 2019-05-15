require_relative '../../app/lib/file_parser'

describe 'Test file parser' do
  let(:test_file) { "#{File.expand_path('..', __dir__)}/webserver_test.log" }

  it 'should read from test data' do
    parser = FileParser.new(test_file)
    expect(parser.retrieve_data.length).to eq(5)
  end

  it 'should raise exception if no file' do
    expect { FileParser.new('') }.to raise_error('File not found')
  end
end
