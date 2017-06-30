require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')
require('pry')

#route for index
get('/') do
    erb(:index)
  end

#route for answer 
get('/answer') do
    
    #Fetch for the inputs from user
    sentence = params.fetch('sentence')
    user_word = params.fetch('user_word')
    
    #variable to display the count
    @count = sentence.word_count(user_word)
    @user_word = user_word
    erb(:answer)
  end