require_relative '../../app/models/web_page_repository'

describe 'Test Wep Page Repository' do
  let(:stub_parser) do
    parser = AbstractParser.new('test')
    arr = [WebPage.new('home', '1'),
           WebPage.new('index', '1'),
           WebPage.new('home', '2'),
           WebPage.new('home', '2')]
    allow(parser).to receive(:retrieve_data).and_return(arr)
    parser
  end

  it 'should get most page views ordered' do
    result = WebPageRepository.new(stub_parser).most_viewed
    expect(result.first[:result]).to eq(3)
    expect(result.last[:result]).to eq(1)
  end

  it 'should get unique views' do
    result = WebPageRepository.new(stub_parser).unique_views
    expect(result['home'].length).to eq(2)
    expect(result['index'].length).to eq(1)
  end
end
