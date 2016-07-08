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

  it('allows the user to see the word they created and its definitions') do
    visit('/')
    click_link("Add a New Word")
    fill_in('word', :with => "test")
    click_button("Add Word")
    click_link("test")
    expect(page).to have_content("test")
  end

  it('allows the user to visit the definition form for a word') do
    visit('/')
    click_link("Add a New Word")
    fill_in('word', :with => "yoohoo")
    click_button("Add Word")
    click_link("yoohoo")
    click_link("Add a New Definition")
    expect(page).to have_content("Enter your definition")
  end

  it('allows user to add a definition for their word') do
    visit('/')
    click_link("Add a New Word")
    fill_in('word', :with => "goodbye")
    click_button("Add Word")
    click_link("goodbye")
    click_link("Add a New Definition")
    fill_in('definition', :with => "something you say when you leave")
    click_button("Add Definition")
    expect(page).to have_content("something you say when you leave")
  end
end
