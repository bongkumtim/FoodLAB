class RecipesController < ApplicationController
	before_action :require_login, except: [:index, :show]

	def index
	end

	def show
		@recipe =  Recipe.all
	end

	def new
		@recipe = Recipe.new

	end

	def create
		@recipe = current_user.recipes.new(recipe_params)
		
		if @recipe.save
		    flash[:success] = "Successfully added a new listing!"
		    redirect_to root_path
		else
		    flash[:danger] = @recipe.errors.full_messages.join(', ')
		    redirect_to new_recipe_path
		end

	end

	def update
	end

	def destroy
	end

	private

	def recipe_params
		params.require(:recipe).permit(:title, :cook_time, :nutrition, :content)
	end

end
