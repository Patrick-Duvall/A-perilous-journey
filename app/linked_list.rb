require "./spec/spec_helper"

class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(name)
    if @head == nil
      @head = Node.new(name)
    else
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(name)
    end
  end

  def prepend(name)
    if @head == nil
      @head = Node.new(name)
    else
      old_head = @head
      @head = Node.new(name)
      @head.next_node = old_head
    end

  end

  def to_string
    surname = @head.surname
    initial = "The #{surname} Family"
    if count == 1
      return initial
    else
      counter = 1
      current_node = @head.next_node
      until counter == count
        initial += ", followed by the #{current_node.surname} family"
        current_node = current_node.next_node unless current_node.next_node == nil
        counter +=1
      end
    end
    initial
  end

  def count
    counter = 0
   if @head == nil
      return counter
   else
     counter +=1
    current_node = @head
    until current_node.next_node == nil
    current_node = current_node.next_node
    counter +=1
    end
  end
    counter
  end
end
