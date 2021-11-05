class CuisinesController < ApplicationController
    def index
        cuisines = Cuisine.all
        render json: cuisines
    end
    
        
    def show
        cuisine = Cuisine.find(params[:id])
        render json: cuisine
    end
    
        
    def create
        cuisine = Cuisine.new(cuisine_params)
        if cuisine.save
            render json: cuisine
        else
            render json: {error: "Error"}
        end
    end
    
        
    # def update
    #     cuisine = Cuisine.find(params[:id])
    #     if cuisine.update(cuisine_params)
    #         render json: cuisine
    #     else
    #         render json: {error: "Error"}
    #     end
    # end
    
    def destroy
        cuisine = Cuisine.find(params[:id])
        cuisine.destroy
        render json: {message: "Cuisine has been deleted."}
    end
    
    private
    def cuisine_params
        params.require(:cuisine).permit(:title)
    end
end
