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

  it('opens form to add a word') do
    visit('/')
    click_link("Add a New Word")
    expect(page).to have_content("Add a New Word to Your Dictionary")
  end

  it('allows user to add a new word after completing form') do
  visit('/')
  click_link("Add a New Word")
  fill_in('word', :with => "hello")
  click_button("Add Word")
  expect(page).to have_content("hello")
  end
end
