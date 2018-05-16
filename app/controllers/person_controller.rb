class PersonController < ApplicationController

  def create
    if params[:role] == 'actor'
      @actor = Actor.create(first_name: params[:first_name] ,last_name: params[:last_name], description: params[:description],birth_day: params[:birth_day])

    elsif params[:person][:role] == 'director'
      @director = Director.create(first_name: params[:first_name] ,last_name: params[:last_name], description: params[:description],birth_day: params[:birth_day])

    end
  end

end
