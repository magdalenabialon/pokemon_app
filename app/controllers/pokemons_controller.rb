class PokemonsController < ApplicationController

  def current_user
    User.find(session[:user_id])
  end

  def index
    @pokemons = Pokemon.all
    render :index
  end


  def create
    @pokemon = Pokemon.new
    @pokemon.name = params[:name]
    @pokemon.image_url = params[:image_url]
    @pokemon.user_id = current_user.id

    if @pokemon.save
      redirect_to '/pokemons'   #redirect go to routes
    else
      render :index   #erb display a template
    end
  end


  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.likes.destroy_all
    @pokemon.comments.destroy_all
    @pokemon.destroy
    redirect_to '/pokemons'
  end

  def results
    render :search
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @comments = Comment.all
  end


  def update
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update(name: params[:name], image_url: params[:image_url])
    @pokemon.save
    redirect_to '/pokemons'
  end





end
