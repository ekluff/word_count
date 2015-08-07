require('rspec')
require('word_count')

describe('String#word_count') do

  it('searches a string for a substring and returns the number of occurences') do
    expect("taco".word_count("tacocat is a cat that likes tacos")).to(eq(2))
  end

  it('accounts for mixed case strings') do
    expect("TaCo".word_count("Tacocat is a cat that likes tacos.")).to(eq(2))
  end

  it('searches only for case matching words') do
    expect("taco".word_count("Tacocat is a cat that likes tacos.",true)).to(eq(1))
  end

  it('searches for whole words only') do
    expect("taco".word_count("Tacocat is a cat that likes tacos.","",true)).to(eq(0))
  end

end
