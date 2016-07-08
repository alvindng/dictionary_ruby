require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the user path', {:type => :feature}) do
  it('opens the home page') do
    visit('/')
    expect(page).to have_content("Welcome to Your Dictionary!")
  end
end
