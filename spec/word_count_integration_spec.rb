require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do

  it('searches for a user-input substring in a user-input string') do
    visit('/')
    fill_in('word', :with => 'TaCo')
    fill_in('sentence', :with => 'Tacocat is a cat that likes tacos.')
    click_button('Search!')
    expect(page).to have_content("We found your word 2 times.")
  end

  it('returns an error message when substring is not found in string.') do
    visit('/')
    fill_in('word', :with => 'burrito')
    fill_in('sentence', :with => 'Tacocat is a cat that likes tacos.')
    click_button('Search!')
    expect(page).to have_content("We could not find your word! Please check your inputs.")
  end

end
