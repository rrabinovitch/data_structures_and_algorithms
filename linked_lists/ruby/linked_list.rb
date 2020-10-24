require './node'

class LinkedList
  attr_reader :head, :count

  def initialize(head = nil)
    @head = head
    @count = 0
  end

  def push(data)
    if @head.nil?
      @head = Node.new(data)
    else
      last_node.next_node = Node.new(data)
    end
    @count += 1
  end

  def pop
    last_node.delete_node
    @count -= 1
  end

  def last_node
    current_node = @head
    current_node = current_node.next_node until current_node.next_node.nil?
    current_node
  end
end
