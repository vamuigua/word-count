require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get('/') do
    erb(:index)
  end