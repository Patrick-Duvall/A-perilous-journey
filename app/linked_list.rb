require "./spec/spec_helper"

class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(name)
    @head = Node.new(name)
  end

  def to_string
    surname = @head.surname
    "The #{surname} Family"
  end
end
