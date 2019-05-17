require "spec_helper"

describe Node do

  it "has attributes" do

    node = Node.new("Burke")
    expect(node.surname).to eq("Burke")
    expect(node.next_node).to eq(nil)

  end

  it '.last?' do
    node = Node.new("Name")
    expect(node.last?).to eq(true)
    node.next_node = Node.new("Next")
    expect(node.last?).to eq(false)
  end

end
