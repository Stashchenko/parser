require_relative '../../app/models/web_page_repository'

describe 'Test Wep Page Repository' do
  it 'should read from test data' do
    parser = LogfileParser.new(test_file)
    expect(parser.retrieve_data.length).to eq 5
  end

  it 'should raise exception if no file' do
    expect { LogfileParser.new('') }.to raise_error(ArgumentError)
  end
end
