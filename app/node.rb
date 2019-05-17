require "./spec/spec_helper"

class Node
  attr_accessor :surname, :next_node
  def initialize(surname)
    @surname = surname
    @next_node = nil
  end

  def last?
    @next_node == nil
  end

end
