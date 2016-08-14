class LikesController < ApplicationController

  def create
    @like = Like.new
    @like.pokemon_id = params[:pokemon_id]
    @like.save
    redirect_to '/pokemons'
  end

end
