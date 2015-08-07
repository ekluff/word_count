require('rspec')
require('word_count')

describe('String#word_count') do

  it('searches for a string within a string and returns true or false') do
    expect("taco".word_count("tacocat is a cat that likes tacos")).to(eq(true))
  end

end
