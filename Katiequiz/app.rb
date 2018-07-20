require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :leora
  end


  post '/climatequiz' do
    answer = params.values
    @total = 0 
    answer.each do |ans|
      @total += ans.to_i
      puts @total
  end
  if @total <21
     @quizresult = "You are a resuable water bottle! A lot of people use you because you're convenient and plastic water bottles are wasteful. You're helpful and useful although not many people realize that."
     elsif @total < 45
     @quizresult = "You are recycling! Haha! You're the big blue bin that people stare at when they have something they don’t know if they should recycle so they put in the trash. But you're easy to spot and very helpful!"
     elsif @total < 65
     @quizresult = "You are turning off the water while brushing your teeth! Wow! People always forget about you and then right when there down brushing their teeth they turn you off!"
     elsif @total < 85
     @quizresult = "You are turning off the lights when leaving an empty room! People don’t realize how much energy you take in!"
     elsif @total >= 85
     @quizresult = "You are a shorter shower! Sometimes people forget how long they have been in the shower while performing concerts."
    end
    erb :leora
end
end 