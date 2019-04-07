def fixed_xor(num1, num2)
  return (num1.to_i(16) ^ num2.to_i(16)).to_s(16)
end

puts fixed_xor("1c0111001f010100061a024b53535009181c", "686974207468652062756c6c277320657965")
