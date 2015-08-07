require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/result') do

  for_string = params.fetch('word')
  in_string = params.fetch('sentence')
  times_found = for_string.word_count(in_string).to_s

  @result_phrase =
  if times_found = 0
    "We could not find your word! Please check your inputs."
  elsif times_found = 1
    "We found your word ".concat(times_found).concat(" time.")
  else
    "We found your word ".concat(times_found).concat(" times.")
  end

  erb(:result)
end
