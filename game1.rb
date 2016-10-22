require 'sinatra'
before do
  content_type :txt
  @defeat = { rock: :scissors, paper: :rock, scissors: :paper }
  @throws = @defeat.keys
end

get '/throw/:type' do
  player_throw = params[:type].to_sym
  if !@throws.include?(player_throw)
    halt 403,  "You must throw one of the following: #{@throws}"
  end

  computer_throw = @throws.sample

  if player_throw == computer_throw
    "You tied with the computer! Ebu jaribu tena!"
  elsif computer_throw == @defeat[player_throw]
    "Awesome! #{player_throw} imegonga #{computer_throw}"
  else
    "WOLOLO! #{computer_throw} imegonga #{player_throw}. Try again"
  end

end
