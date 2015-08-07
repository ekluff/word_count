require('rspec')
require('word_count')

describe('String#word_count') do

  it('searches a string for a substring and returns the number of occurences') do
    expect("taco".word_count("tacocat is a cat that likes tacos")).to(eq(2))
  end
  # 
  # it('will return a custom error message if a substring is not found within a string') do
  #   expect("burrito".word_count("tacocat is a cat that likes tacos")).to(eq("We could not find your word in that sentence! Please check your inputs."))
  # end

  it('accounts for mixed case strings') do
    expect("TaCo".word_count("Tacocat is a cat that likes tacos.")).to(eq(2))
  end

end
