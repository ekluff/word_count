require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do

  it('returns the number of times a mixed-case substring is found in a non-conforming case string containing that substring multiple times') do
    visit('/')
    fill_in('word', :with => 'TaCo')
    fill_in('sentence', :with => 'Tacocat is a cat that likes tacos.')
    click_button('Search!')
    expect(page).to have_content("We found your word 2 times.")
  end

  it('returns an error message when substring is not found in string') do
    visit('/')
    fill_in('word', :with => 'burrito')
    fill_in('sentence', :with => 'Tacocat is a cat that likes tacos.')
    click_button('Search!')
    expect(page).to have_content("We could not find your word! Please check your inputs.")
  end

  it('returns a phrase using the gramatically correct singular/plural when a substring occurs only once in a string') do
    visit('/')
    fill_in('word', :with => 'likes')
    fill_in('sentence', :with => 'Tacocat is a cat that likes tacos.')
    click_button('Search!')
    expect(page).to have_content("We found your word 1 time.")
  end

  it('returns an error message when the user searches for a null set') do
    visit('/')
    fill_in('word', :with => '')
    fill_in('sentence', :with => 'Tacocat is a cat that likes tacos.')
    click_button('Search!')
    expect(page).to have_content("Uh oh! It looks like you didn't give us a word to search for. Please check your inputs.")
  end

end
