class Person
  attr_accessor :is_gifted, :name, :recipient
end

def set_up_array
  @participants = []
  ARGV.shuffle.each do |a|
    p = Person.new
    p.name = a
    p.is_gifted = false
    @participants.push(p)
  end
end

def assign_recipients
  place = 0
  while place < @participants.length
    @participants[place].recipient = @participants[place-1]
    place += 1
  end
end

def print_results
  @participants.each do |p|
    puts "#{p.name} -> #{p.recipient.name}"
  end
end

set_up_array
assign_recipients
print_results
