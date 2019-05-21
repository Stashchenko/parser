describe 'Test GroupBy Query' do
  let(:webpage_arr) do
    [WebPage.new('home', '1'),
     WebPage.new('index', '1'),
     WebPage.new('home', '2'),
     WebPage.new('home', '2')]
  end

  it 'should group array of simple numbers' do
    data = [1, 2, 3, 4, 4, 5, 5, 5]
    group_query = GroupByQuery.new
    result = group_query.perform(data)
    expect(result[5].length).to eq(3)
    expect(result[4].length).to eq(2)
    expect(result[1].length).to eq(1)
  end

  it 'should group array of objects by path field' do
    group_query = GroupByQuery.new(:path)
    result = group_query.perform(webpage_arr)
    expect(result['home'].length).to eq(3)
    expect(result['index'].length).to eq(1)
  end
end
