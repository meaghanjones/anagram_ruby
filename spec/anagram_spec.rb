require('rspec')
require('anagram.rb')

describe('String#anagram') do
  it('given a single word it should return that word in an array if it is an anagram ') do
    expect("stop".anagram("pots")).to eq(["stop"])
   end
  it('given a sentence word it should return all words that are anagrams with argument word') do
    expect("stop the pots from losing their tops".anagram("pots")).to eq(['stop','tops'])
   end
end
