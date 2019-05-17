require "spec_helper"


describe LinkedList do

  it 'has a head initially nil' do
  list = LinkedList.new
  expect(list.head).to eq(nil)
  end

end
