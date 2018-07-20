require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'views'
  end

  get '/' do
    erb :index
  end 
  
  post  '/results' do
   answers = params.values
   @total = 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total
   
   if @total < 5
     erb :twitter
   elsif @total < 8 
     erb :instagram
   elsif @total <11
     erb :youtube
   elsif @total <13 
     erb :internet 
   end
 end
    
end 
  

  