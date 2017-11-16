require_relative './person'

def set_up_array
  @participants = []
  ARGV.shuffle.each do |a|
    @participants << Person.new(a)
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

