# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Cuisine.create(title: "Mediterranean")
c2 = Cuisine.create(title: "Latin American")
c3 = Cuisine.create(title: "Asian")
c4 = Cuisine.create(title: "African")

Recipe.create(title: "Greek Lemon Pilaf",
image: "https://img.sndimg.com/food/image/upload/c_thumb,q_80,w_599,h_337/v1/img/recipes/36/34/6/picEIb5Gb.jpg",
instructions: "In a heavy saucepan, saute onion in butter until tender.
Add rice and orzo and cook, stirring, for 2 minutes.
Add chicken broth and lemon juice and bring to a boil.
Reduce heat, cover, and simmer for 20 minutes or until rice is tender and liquid has been absorbed.
Fluff pilaf up with fork and stir in chopped parsley.",
ingredients: "2
tablespoons butter or 2 tablespoons margarine
1/2
cup chopped onion
1
cup long grain rice
2
tablespoons orzo pasta
2
cups chicken broth
1⁄4
cup lemon juice
2
tablespoons chopped parsley",
cuisine: c1)

Recipe.create(title: "Arroz con Pollo",
image: "https://images-gmi-pmc.edge-generalmills.com/d41fa3ed-1222-4c30-8653-2ff69706aab2.jpg",
instructions: "1
Heat oil over medium heat for 5 minutes in heavy pot. Season the chicken pieces with the first 4 dried spices listed. Cook chicken for 3 minutes per side and remove from pot. Remove about 1 1/2 tablespoons of excess oil out of pot.
2
In same pot, add rice and toast for 3 minutes. Add the onion, Poblano, Serrano, and carrots, cook for 3 more minutes. Add garlic and tomatoes, stir well to combine and cook for 1 minute.
3
Add the broth, cumin, and bouillon granules, and bring to a boil. Taste for salt, reduce heat slightly, and add chicken pieces back into pot, spaced out evenly. Add the whole Serrano pepper to dish, cover and cook at a low simmer for 12 to 15 minutes. Add diced zucchini on top, making sure you do not mix (disturb) rice. Cover and continue cooking until all of the liquid is absorbed. Remove from heat and let stand for 10 minutes.
4
Before serving, fluff rice with a fork and mix zucchini in. Serve.",
ingredients: "1/4
cup olive oil 
1 1/2
lb boneless chicken thighs, cut into 1 inch pieces SAVE $
1
teaspoon salt
1
teaspoon garlic powder
1/2
teaspoon smoked paprika
1/2
teaspoon pepper
1 1/2
cups long grain rice
1/2
cup diced onion 
1
Poblano chile, diced
2
Serrano chiles, 1 minced and 1 left whole
2
carrots, diced 
3
cloves garlic, minced
3
Roma tomatoes, diced
3
cups chicken broth
1
teaspoon cumin
1
tablespoon tomato or chicken flavored bouillon granules
2
cups diced zucchini
12
corn tortillas, if desired
6
lemon wedges, if desired
2
cups homemade or store bought salsa, if desired
1/3
cup cilantro, chopped, if desired",
cuisine: c2)

Recipe.create(title: "Egg Fried Rice",
image: "https://healthynibblesandbits.com/wp-content/uploads/2018/02/Egg-Fried-Rice-10.jpg",
instructions: "Crack the eggs into a small bowl and beat them together.
Heat a skillet with 1 tablespoon of the oil over medium-high heat. Once the pan is hot, add the beaten eggs and scramble them for about a minute. Transfer the eggs to a dish and turn off the heat.
Drizzle the remaining 2 tablespoons of oil into a wok over high heat. Add the onions and cook them for about 1 to 2 minutes, stirring constantly. Add the mixed vegetables and white parts of the scallions and cook for 2 minutes. Season the vegetables with a pinch of salt.
Add the cooked rice into the pan or wok and cook for several minutes, until the rice is heated through. If there are large clumps of rice, break them apart with the back of your spatula.
Add the soy sauce, five-spice powder, dash of white pepper (if using) and sesame oil and stir to distribute the seasonings. (See note 6) Add the scrambled eggs and stir to mix again. Garnish with remaining sliced scallions. Serve immediately.",
ingredients: "4 large eggs
3 tablespoons peanut, vegetable, or olive oil, divided (see note 1)
1 cup diced onion (about 1 small onion, see note 2)
1 1/2 to 2 cups diced mixed vegetables (such as bell pepper, carrots, zucchini, etc.) (see note 3)
1/2 cup sliced scallions, white and green parts divided (see note 4)
pinch of salt
4 cups cooked overnight jasmine rice (see note 5)
2 1/2 tablespoons soy sauce (use tamari if gluten free)
1/2 teaspoon five-spice powder
dash of ground white pepper (optional)
1 to 2 teaspoons toasted sesame oil",
cuisine: c3)

Recipe.create(title: "Jollof Rice", 
image: "https://feelgoodfoodie.net/wp-content/uploads/2020/07/Jollof-Rice-4.jpg",
instructions: "Season and cook the steak. Remove from the pan.
Cook the onions until they are soft and translucent.
Add in the rice, along with the tomato paste and seasonings. Stir to combine.
Add in the rest of the ingredients, the cooked steak and water; and bring to a boil.
Simmer covered until the rice is cooked.",
ingredients: "1/3 cup oil (vegetable/canola/coconut, not olive oil)
6 medium-sized fresh plum/Roma tomatoes, chopped, OR a 400-gram tin of tomatoes
6 fresh, red poblano peppers (or 4 large red bell peppers), seeds discarded
3 medium-sized red onions (1 sliced thinly, 2 roughly chopped), divided
1/2 to 1 hot pepper, or to taste (yellow Scotch bonnets are my favourite)
3 tablespoons tomato paste
2 teaspoons (Caribbean/Jamaican-style) curry powder
1 teaspoon dried thyme
2 dried bay leaves
5 to 6 cups stock (vegetable, chicken, or beef) or water, divided
2 teaspoons unsalted butter (optional), divided
4 cups uncooked converted long-grain rice or golden sella basmati, rinsed
Salt, to taste
Black and white pepper, to taste
Extra: sliced onions, tomatoes",
cuisine: c4)