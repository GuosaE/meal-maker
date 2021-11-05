const recipesURL = 'http://localhost:3000/recipes';
const recipeContainer = document.querySelector('tbody');
const form = document.getElementById('add-new-recipe-form')

Recipe.getAllRecipes();

form.addEventListener('submit', Recipe.makeNewRecipe);
recipeContainer.addEventListener('click', Recipe.deleteExistingRecipe)

class Recipe {

    constructor(id, title, image, instructions, ingredients, cuisine) {
        this.id = id
        this.title = title
        this.image = image
        this.instructions = instructions
        this.ingredients = ingredients
        this.cuisine = cuisine
    }


}