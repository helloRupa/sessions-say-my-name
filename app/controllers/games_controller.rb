class GamesController < ApplicationController
  def create
    answer = params[:name]

    if answer.downcase == 'beyonce'
      session[:score] += 1
      puts 'Good job! You said her name'
    else
      puts 'How do you not know?!'
    end

    redirect_to '/users/1'
  end
end
