text, key = ARGV[0].dup, ARGV[1].to_i
# .dup allows us to modify the argument by duplicating it w/o copying the flags

for i in 0...text.length
  if text[i].match(/[A-Za-z]/)
    for j in 1..key
      if text[i].include?("z")
        text[i] = "a"
      elsif text[i].include?("Z")
        text[i] = "A"
      else
        text[i] = text[i].next
      end
    end
  end
end

puts text
