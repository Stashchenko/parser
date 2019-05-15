require_relative '../../app/models/web_page_repository'

describe 'Test Wep Page Repository' do
  it 'should get 2 visits on home page' do
    @parser = AbstractParser.new('test')
    @parser.stub(:retrieve_data) do
      [WebPage.new('home', '1'),
       WebPage.new('index', '1'),
       WebPage.new('home', '2')]
    end
    repo = WebPageRepository.new(@parser)
    repo.most_viewed.first.pop.should eq(2)
  end
end
