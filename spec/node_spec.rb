require "spec_helper"

describe Node do

  it "has attributes" do

    node = Node.new("Burke")
    expect(node.surname).to eq("Burke")
    expect(node.next_node).to eq(nil)

  end

end
