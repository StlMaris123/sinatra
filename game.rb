require 'sinatra'

before do
  content_type :txt
  @defeat  = { rock: :scissors, paper: :rock, scissors: :paper }
  @throws = @defeat.keys
end

get '/throw/:type' do
# the params [] stores the queryingstring and form data
  player_throw = params[:type].to_sym
  #
  #halt with status code 403 incase user provides a throw which is not valid
  if !@throws.include?(player_throw)
    halt 403, "You must throw one of the following: #{@throws}"
  end

  #select a random throw for the computer
  computer_throw = @throws.sample

  #compare the player and the computer throws to determine a winner
  if player_throw == computer_throw
    "You tied with the computer , please try again"
  elsif computer_throw == @defeat[player_throw]
    "Great work #{player_throw} beats #{computer_throw} !"
  else
    "WOOPSI, #{computer_throw} beats #{player_throw}. Try your luck next time."
  end
end
