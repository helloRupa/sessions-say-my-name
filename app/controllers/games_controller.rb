class GamesController < ApplicationController
  def create
    answer = params[:name]

    puts answer.downcase == 'beyonce' ? 'Good job! You said her name' : 
                                        'How do you not know?!'

    redirect_to '/users/1'
  end
end
