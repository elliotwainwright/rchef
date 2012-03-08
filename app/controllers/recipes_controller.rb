class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    respond_to do |format|
      format.html # Send the page using HTML
      format.xml { render :xml => @recipes } # Send the page using XML
      format.atom
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.save
      @recipe.update_attributes(params[:recipe])
      flash[:notice] = "Recipe updated!"
      redirect_to @recipe
    else 
      flash[:notice] = "Recipe was not updated!"
      redirect_to edit_recipe_path
    end
  end
  
  def create
    @recipe = Recipe.create(params[:recipe])
    flash[:notice] = "New recipe created!"
    redirect_to root_url
  end
  
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    redirect_to recipes_path
  end

end
