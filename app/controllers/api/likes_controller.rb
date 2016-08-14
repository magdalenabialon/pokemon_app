module Api

  class LikesController < ApplicationController

    def create
      like = Like.new
      like.pokemon_id = params[:pokemon_id]
      like.save
      like_count = Pokemon.find(params[:pokemon_id]).likes.count
      render json: {like_count: like_count}
    end

  end

end
