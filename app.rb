require('sinatra')
require('sinatra/reloader')
require('./lib/make_change')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end
