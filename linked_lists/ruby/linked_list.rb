require './node'

class LinkedList
  attr_reader :head, :count

  def initialize(head = nil)
    @head = head
    @count = 0
  end

  def push(data)
    @head = Node.new(data)
    @count += 1
  end
end
