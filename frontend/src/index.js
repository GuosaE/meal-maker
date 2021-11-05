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


    static makeNewRecipe(event) {
        event.preventDefault();

        const title = event.target.title.value;
        const image = event.target.image.value;
        const instructions = event.target.instructions.value;
        const ingredients = event.target.ingredients.value;
        const cuisine = event.target.cuisine.value;

        const newRecipe = {
            title: title,
            image: image,
            ingredients: ingredients,
            instructions: instructions,
            cuisine: cuisine
        };
    
        Recipe.postNewRecipe(newRecipe);
    }


    static postNewRecipe(newRecipe) {
        const options = {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(newRecipe),
        };
    
        fetch(recipesURL, options)
            .then(resp => resp.json())
            .then(recipe => {
                let newestRecipe = new Recipe(`${recipe.id}`, 
                                            `${recipe.title}`, 
                                            `${recipe.image}`, 
                                            `${recipe.instructions}`, 
                                            `${recipe.ingredients}`, 
                                            `${recipe.cuisine.title}`); 
                recipeContainer.innerHTML += newestRecipe.renderSingleRecipe()
            });
    }


    renderSingleRecipe() {
        return `
            <tr>
                <td>${this.title}
                <td><img src='${this.image}' width="500" height="500">
                <td>${this.ingredients}
                <td>${this.instructions}
                <td>${this.cuisine}
            </tr>
            <button data-id="${this.id}" class="recipe-button">Delete</button>
            `;
    }


    static getAllRecipes(){
        fetch(recipesURL)
        .then(resp => resp.json())
        .then(data => {
            Recipe.appendRecipes(data);
        });
    }


    static appendRecipes(recipes) {
        recipes.forEach((recipe) =>{
            let newRecipe = new Recipe(`${recipe.id}`, 
            `${recipe.title}`, 
            `${recipe.image}`, 
            `${recipe.instructions}`, 
            `${recipe.ingredients}`, 
            `${recipe.cuisine.title}`); 
            recipeContainer.innerHTML += newRecipe.renderSingleRecipe()
        });
    }



}