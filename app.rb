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
  times_found = for_string.word_count(in_string)

  @result_phrase = if in_string == "" && times_found == ""
    "Uh oh! It looks like you left the form blank. Please check your inputs."
  elsif in_string == ""
    "Uh oh! It looks like you didn't give us a sentence to search in. Please check your inputs."
  else
    case times_found
    when ""
        "Uh oh! It looks like you didn't give us a word to search for. Please check your inputs."
    when 0
      "We could not find your word! Please check your inputs."
    when 1
      "We found your word ".concat(times_found.to_s).concat(" time.")
    else
      "We found your word ".concat(times_found.to_s).concat(" times.")
    end
  end

  erb(:result)
end
