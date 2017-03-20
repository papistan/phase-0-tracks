arr = ["cup", "glass", "can"]
has_h = {
	soda: "coke",
	beer: "budweiser",
	juice: "kool-aid"
}

puts "Original data: "
p arr
p has_h

puts "After .each:"
arr.each { |x| puts "I drink out of #{x}."}

has_h.each { |key, value| puts "My favorite #{key} is #{value}."}

puts "After .map and .map!:"
arr.map do |x|
	puts x
	x.next
end

p arr

arr.map! do |x|
	puts x
	x.reverse
end

p arr

has_h.map do |key, value|
  puts "This #{key} is #{value}."
  value.reverse
end

p has_h

arr.keep_if { |x| x =~ /[c]/}

p arr

has_h.select { |k, v| v == "budweiser"}

p has_h
