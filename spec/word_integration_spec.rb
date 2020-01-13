require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create an word path', {:type => :feature}) do
  it('creates an word and then goes to the word page') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word_name', :with => 'Yellow Submarine')
    click_on('Add word')
    expect(page).to have_content('Yellow Submarine')
  end
end

describe('create a definition path', {:type => :feature}) do
  it('creates an word and then goes to the word page') do
    word = Word.new("Yellow Submarine", nil)
    word.save
    visit("/words/#{word.id}")
    fill_in('definition_name', :with => 'All You Need Is Love')
    click_on('Add definition')
    expect(page).to have_content('All You Need Is Love')
  end
end
