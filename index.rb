cipher = gets.chomp
crib = gets.chomp

positions = 0

move = 0
while move + crib.length <= cipher.length do
  eql = false

  count = 0
  while count < crib.length && !eql do
    if cipher[count + move] == crib[count]
      eql = true
    end  
    count += 1
  end

  if !eql 
    positions += 1 
  end
  move += 1
end

puts positions