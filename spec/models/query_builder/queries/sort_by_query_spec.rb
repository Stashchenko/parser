describe 'Test SortBy Query' do
  let(:webpage_arr) do
    [WebPage.new('a', '1'),
     WebPage.new('c', '1'),
     WebPage.new('x', '2'),
     WebPage.new('e', '2')]
  end

  let(:simple_arr) { [5, 8, 3, 4, 1, 5, 5, 3] }

  it 'should group array of simple numbers in asc order' do
    sort_query = SortByQuery.new
    result = sort_query.perform(simple_arr)
    expect(result[0]).to eq(1)
    expect(result[7]).to eq(8)
    expect(result[3]).to eq(4)
  end

  it 'should group array of simple numbers in desc order' do
    sort_query = SortByQuery.new(nil, :des)
    result = sort_query.perform(simple_arr)
    expect(result[0]).to eq(8)
    expect(result[7]).to eq(1)
    expect(result[3]).to eq(5)
  end

  it 'should group array of objects by path field' do
    sort_query = SortByQuery.new(:path)
    result = sort_query.perform(webpage_arr)
    expect(result[0].path).to eq('a')
    expect(result[1].path).to eq('c')
  end
end
