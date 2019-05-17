require "./spec/spec_helper"

class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def empty?
    @head == nil
  end

  def append(name)
    if empty?
      @head = Node.new(name)
    else
      current_node = @head
      until current_node.last?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(name)
    end
  end

  def prepend(name)
    if empty?
      @head = Node.new(name)
    else
      old_head = @head
      @head = Node.new(name)
      @head.next_node = old_head
    end
  end

  def insert(position,name)
    if empty?
      @head = Node.new(name)
    else
      current_node = @head
    (position -1).times do |x|
      current_node = current_node.next_node
    end
    old_next_node = current_node.next_node
    current_node.next_node = Node.new(name)
    current_node.next_node.next_node = old_next_node
  end
  end

  def find(start,number)
     if empty?
       return ""
     else
    current_node = @head
    (start-1).times do |x|
      current_node = current_node.next_node
    end
    string = "The #{current_node.surname} family"
    (number-1).times do |x|
      current_node = current_node.next_node
      string += ", followed by the #{current_node.surname} family"
    end
    string
  end

  end

  def includes?(name)
    return false if empty?
    flag = false
    current_node = @head
    until current_node.last?
      flag = true if current_node.surname == name
      current_node = current_node.next_node
    end
    flag = true if current_node.surname == name
    flag
  end

  def pop
    return false if empty?
    current_node = @head
    until current_node.last?
      last_node = current_node
      current_node = current_node.next_node
    end
    string = "The #{current_node.surname} family has died of dysentary"
    last_node.next_node = nil
    string
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
        current_node = current_node.next_node unless current_node.last?
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
    until current_node.last?
    current_node = current_node.next_node
    counter +=1
    end
  end
    counter
  end
end
