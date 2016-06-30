class String
  def anagram(target)
      anagram_array = []
    self.split(' ').each do |word|
      if word.scan(/[a-z]/).sort() == target.scan(/[a-z]/).sort() && target.scan(/[a-z]/) != word.scan(/[a-z]/)
        anagram_array.push(word.scan(/[a-z]/).join(''))
      end
    end
    anagram_array
  end
end
