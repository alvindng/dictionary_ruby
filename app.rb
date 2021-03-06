require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/words')
require('./lib/definitions')

get('/') do
  erb(:index)
end

get('/words/new') do
  erb(:words_form)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

post('/words') do
  word = params.fetch('word')
  Word.new(word).save()
  @words = Word.all()
  erb(:words)
end

get('/words/:id') do
  @word = Word.find(params.fetch("id").to_i())
  erb(:word)
end

get('/words/:id/definitions/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:definitions_form)
end

post('/words/:id') do
  @word = Word.find(params.fetch("id").to_i())
  definition = params.fetch('definition')
  Definition.new(definition).save()
  @word.add_definition(definition)
  erb(:word)
end
