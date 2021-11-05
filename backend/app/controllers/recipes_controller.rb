class RecipesController < ApplicationController
    
    # GET /recipes
    def index
        recipes = Recipe.all
        render json: recipes.to_json(:include => {
            :cuisine => {:only => [:title]}
        })
    end

    # GET /recipes/:id
    def show
        recipe = Recipe.find(params[:id])
        render json: recipe.to_json(:include => {
            :cuisine => {:only => [:title]}
        })
    end

    # POST /recipes
    def create
        recipe = Recipe.new(recipe_params)
        recipe.cuisine_id = Cuisine.all.find_or_create_by(title: params[:cuisine]).id
        if recipe.save
            render json: recipe.to_json(:include => {
                :cuisine => {:only => [:title]}
            })
        else
            render json: {error: "Error."}
        end
    end

    # # PATCH /recipes/:id
    # def update
    #     recipe = Recipe.find(params[:id])
    #     recipe.cuisine_id = Cuisine.all.find_or_create_by(title: params[:recipe][:cuisine]).id
    #     if recipe.update(recipe_params)
    #         render json: recipe.to_json(:include => {
    #             :cuisine => {:only => [:title]}
    #         })
    #     else
    #         render json: {error: "Error."}
    #     end

    # end

    # DELETE /recipes/:id
    def destroy
        recipe = Recipe.find(params[:id])
        recipe.destroy
        render json: {message: "Recipe has been deleted."}
    end

    private
    def recipe_params
        params.require(:recipe).permit(:title, :image, :instructions, :ingredients)
    end

end