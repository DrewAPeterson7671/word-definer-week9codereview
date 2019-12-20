require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  redirect to ('/words')
end

get('/words') do
  @words = Word.sort
  erb(:words)
end

get('/words/search') do
  user_search = params[:search]
  @search = Word.search(search_word)
  erb(:search)
end

get('/words/new') do
  erb(:new_word)
end
