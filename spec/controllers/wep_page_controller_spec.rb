require_relative '../../app/controllers/wep_page_controller'
require_relative '../../app/views/web_page_viewer'

describe 'Test WepPage Controller' do
  let(:most_viewed_array) do
    [[:home, [1, 2, 3, 5]],
     [:index, [1, 2, 3]]]
  end

  let(:unique_views_hash) do
    { home: [1, 2, 3], index: [2, 3] }
  end

  let(:controller) do
    repo = WebPageRepository.new(nil)
    allow(repo).to receive(:most_views).and_return(most_viewed_array)
    allow(repo).to receive(:uniq_views).and_return(unique_views_hash)
    WepPageController.new(repo, WebPageViewer.new)
  end

  it 'should get most page ordered views' do
    result = controller.most_viewed
    expect(result[0][:key]).to eq(:home)
    expect(result[0][:process]).to eq(4)
    expect(result[1][:process]).to eq(3)
  end

  it 'should get unique views' do
    result = controller.unique_views
    expect(result[0][:key]).to eq(:home)
    expect(result[0][:process]).to eq(3)
  end
end
