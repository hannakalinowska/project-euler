require 'spec/spec_helper'
require 'problem018'

describe '#max(tree, sum)' do
  it "returns node value if a leaf" do
    node = Node.new(:value => 2)
    max(node, 0).should == 2
    max(node, 1).should == 3
  end

  it "returns highest sum of values in a tree" do
    node = Node.new(:value => 1, :left => Node.new(:value => 2), :right => Node.new(:value => 3))
    max(node, 0).should == 4
    max(node, 1).should == 5
  end
end

describe '#create_tree(row, column)' do
  it "creates nodes if last row" do
    triangle = [[1]]
    tree = create_tree(triangle, 0, 0)
    tree.should be_a(Node)
    tree.value.should == 1
    tree.leaf?.should be_true
  end

  it "creates nodes and subtree when more rows" do
    triangle = [[3], [1, 2]]
    tree = create_tree(triangle, 0, 0)
    tree.should be_a(Node)
    tree.value.should == 3
    tree.leaf?.should == false
    [tree.left.value, tree.right.value].should == [1, 2]
  end
end
