require_relative '../../app/models/web_page_repository'

describe 'Test WepPage Repository' do
  let(:webpage_arr) do
    [WebPage.new('home', '1'),
     WebPage.new('index', '1'),
     WebPage.new('home', '2'),
     WebPage.new('home', '2')]
  end

  let(:repo) do
    parser = BaseParser.new
    allow(parser).to receive(:retrieve_data).and_return(webpage_arr)
    WebPageRepository.new(parser)
  end

  it 'should get most page views ordered' do
    result = repo.most_views
    expect(result.pop[1].length).to eq(1)
    expect(result.pop[1].length).to eq(3)
  end

  it 'should get unique views' do
    result = repo.uniq_views
    expect(result['home'].length).to eq(2)
    expect(result['index'].length).to eq(1)
  end
end
