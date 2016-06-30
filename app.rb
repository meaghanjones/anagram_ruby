require('sinatra')
require('sinatra/reloader')
require('./lib/anagram.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do
  @anagram = params.fetch('phrase').anagram(params.fetch('target-word'))
  erb(:anagram)
end
