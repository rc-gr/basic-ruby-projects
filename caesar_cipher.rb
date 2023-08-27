def caesar_cipher(string, shift_factor)
  encrypted_char_array = string.chars.map do |char|
    char_ordinal = char.ord
    offset = 0
    if char_ordinal.between?("A".ord, "Z".ord)
      offset = "A".ord
    elsif char_ordinal.between?("a".ord, "z".ord)
      offset = "a".ord
    end
    
    if offset > 0
      char_ordinal = (char_ordinal - offset + shift_factor) % 26 +  offset
    end
    char_ordinal.chr
  end
  encrypted_char_array.join
end