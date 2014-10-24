# Set up base array
participants = []
ARGV.each do |a|
  participants.push(a)
end

# Create arrays to use
gifters = participants.shuffle
recipients = participants.shuffle
assignments = {}
start = 0

# Assign
gifters.each do |giver|
  if giver != recipients[start]
    assignments[giver] = recipients[start]
    start = start + 1
  end
end

# Print out
assignments.each do |giver,taker|
  puts "#{giver} -> #{taker}"
end
