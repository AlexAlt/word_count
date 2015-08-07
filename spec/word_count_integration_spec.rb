require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the word count process', {:type => :feature}) do
  it('processes the user entry of word string and target word and returns the number of instances of target word') do
    visit('/')
    fill_in("target_word", :with => "cat")
    fill_in("word_string", :with => "cat, dog, cat, bird")
    click_button("Count that Ish")
    expect(page).to have_content("This word shows up 2 times!!!")
  end
end