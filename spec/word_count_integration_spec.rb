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
    click_button('Send')
    expect(page).to have_content("Your word was found 2 times.")
  end

end
