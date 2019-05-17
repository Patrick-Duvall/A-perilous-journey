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

  it '.append multiple' do
    @list.append("West")
    expect(@list.head).to be_a(Node)
    expect(@list.head.surname).to eq("West")
    expect(@list.head.next_node).to eq(nil)
    @list.append("Hardy")
    expect(@list.head.next_node.surname).to eq("Hardy")
    expect(@list.head.next_node.next_node).to eq(nil)
    expect(@list.count).to eq(2)
    @list.append("Johnson")
    expect(@list.head.next_node.next_node.surname).to eq("Johnson")
    expect(@list.head.next_node.next_node.next_node).to eq(nil)
    expect(@list.count).to eq(3)
  end

  it '.prepend' do
    @list.append("McKinney")
    @list.append("Brooks")
    @list.prepend("Henderson")
    expect(@list.to_string).to eq("The Henderson Family, followed by the McKinney family, followed by the Brooks family")
  end

  it ".to_string" do
      @list.append("Rhodes")
      expect(@list.to_string).to eq("The Rhodes Family")
      @list.append("Hardy")
      expect(@list.to_string).to eq("The Rhodes Family, followed by the Hardy family")
      @list.append("Hardy")
  end


end
