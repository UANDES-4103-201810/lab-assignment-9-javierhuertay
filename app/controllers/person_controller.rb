class PersonController < ApplicationController

  def new

    @actor = Actor.new
    @director = Director.new

  end

  def create

    if params[:person][:role] == 'actor'
      @actor = Actor.new(first_name: params[:first_name] ,last_name: params[:last_name], description: params[:description],birth_day: params[:birth_day])

      respond_to do |format|
        if @actor.save
          format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
          format.json { render :show, status: :created, location: @actor }
        else
          format.html { render :new }
          format.json { render json: @actor.errors, status: :unprocessable_entity }
        end
      end

    elsif params[:person][:role] == 'director'
      @director = Director.new(first_name: params[:first_name] ,last_name: params[:last_name], description: params[:description],birth_day: params[:birth_day])

      respond_to do |format|
        if @director.save
          format.html { redirect_to @director, notice: 'Actor was successfully created.' }
          format.json { render :show, status: :created, location: @director }
        else
          format.html { render :new }
          format.json { render json: @director.errors, status: :unprocessable_entity }
        end
        end
  end

  end
end
