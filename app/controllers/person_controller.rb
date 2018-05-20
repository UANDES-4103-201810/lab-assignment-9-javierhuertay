class PersonController < ApplicationController

  def index
    @director = Director.all
    @actor = Actor.all
    if params[:role] == 'actor'
      redirect_to actors_path
    else if params[:role] == 'director'
           redirect_to directors_path
         else
           redirect_to person_create_path
         end
    end
  end

  def new

    @actor = Actor.create
    @director = Director.create
  end

  def create

    if params[:role] == 'actor'
      @actor = Actor.create(first_name: params[:first_name] ,last_name: params[:last_name], description: params[:description],birth_date: params[:birth_date])

      respond_to do |format|
        if @actor.save
          format.html { redirect_to actors_path , notice: 'Actor was successfully created.' }
          format.json { render :show, status: :created, location: @actor }
        else
          format.html { render :new }
          format.json { render json: @actor.errors, status: :unprocessable_entity }
        end
      end

    elsif params[:role] == 'director'
      @director = Director.create(first_name: params[:first_name] ,last_name: params[:last_name], description: params[:description],birth_date: params[:birth_date])

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
  def show
    @actor = Actor.show
    @director = Director.show

  end
end
