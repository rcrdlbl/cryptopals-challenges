class String
  def xor_with(other_string)
    self.bytes.zip(other_string.bytes).map { |(a,b)| a ^ b }.pack('c*')
  end
end

def single_byte_xor(num)
  chars = [*('a'..'z'), *('A'..'Z'), *('0'..'9')]
  return chars.map{|char| num.to_i(16).to_s.xor_with(char)}
end

puts single_byte_xor("1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736")
