def substrings(text, dictionary)
  lowercase_text = text.downcase
  dictionary.reduce(Hash.new()) do |result, substring|
    count = lowercase_text.scan(substring.downcase).length
    if count > 0
      result[substring] = count
    end
    result
  end
end