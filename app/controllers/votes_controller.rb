class VotesController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.votes.create

    respond_to do |format|
      format.html { redirect_to @recipe }
      format.js
    end

  end

end
