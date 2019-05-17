require "spec_helper"


describe LinkedList do
  before :each do
    @list = LinkedList.new
  end
  it 'has a head initially nil' do

  expect(@list.head).to eq(nil)
  end

  it '.append' do
    @list.append("West")
    expect(@list.head).to be_a(Node)
    expect(@list.head.surname).to eq("West")
    expect(@list.head.next_node).to eq(nil)
  end

  it ".to_string" do
      @list.append("West")
      expect(@list.to_string).to eq("The West Family")
  end

end
