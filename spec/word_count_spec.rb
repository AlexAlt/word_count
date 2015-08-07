require('rspec')
require('./lib/word_count.rb')

describe('String#word_count') do
  it('counts the number of target words in a multiple word string') do
    expect("cat dog bird cat dog".word_count("cat")).to(eq(2))
  end

  it('manages non-letter characters in input string') do
    expect("cat, dog, bird, cat, dog".word_count("cat")).to(eq(2))
  end

  it('manages uppercased characters in input string') do
    expect("CAT, DOG, BIRD, CAT, DOG".word_count("cat")).to(eq(2))
  end
end