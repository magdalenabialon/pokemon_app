class CommentsController < ApplicationController

  def create
    @comment = Comment.new
    @comment.pokemon_id = params[:pokemon_id]
    @comment.content = params[:content]
    @comment.save
    redirect_to "/pokemons/#{ params[:pokemon_id] }"
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to "/pokemons/#{@comment.pokemon_id}"
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(content: params[:content])
    @comment.save
    redirect_to "/pokemons/#{@comment.pokemon_id}"
  end

end
