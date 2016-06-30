require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_expectation, false)

describe('the anagram feature', {:type => :feature}) do
  it('takes a string and a word and sees if there are any anagrams')do
    visit('/')
    fill_in('phrase', :with => 'mister bat is cool')
    fill_in('target-word', :with => 'tab')
    click_button('Anagram')
    expect(page).to have_content('bat')
  end
end
