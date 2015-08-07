require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Applications
set(:show_expectations, false)

describe('the word count process', {:type => :feature}) do
  it('processes the user entry of word string and target word and returns the number of instances of target word') do
    visit('/')
    fill_in("target_word", :with => "cat")
    click_button("Count that Ish")
    expect(page).to have_content("2")
  end
end