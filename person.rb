class Person
  attr_reader   :is_gifted, :name
  attr_accessor :recipient

  def initialize(name)
    @name = name
    @is_gifted = false
    @recipient = nil
  end
end
