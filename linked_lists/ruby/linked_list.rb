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
    if @head.nil?
      nil
    else
      @count -= 1
      last_node.delete_node
    end
  end

  def delete(data)
    found_node = find_node(data)
    if found_node
      found_node.delete_node
      @count -= 1
    end
  end

  def last_node
    current_node = @head
    current_node = current_node.next_node until current_node.next_node.nil?
    current_node
  end

  def find_node(data)
    current_node = @head
    until current_node.nil? || current_node.data == data
      current_node = current_node.next_node
    end

    return current_node if !current_node.nil? && current_node.data == data
    return nil
  end
end
