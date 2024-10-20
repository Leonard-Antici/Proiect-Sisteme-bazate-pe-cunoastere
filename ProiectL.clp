(deftemplate FoodRecipe
    (slot name )
    (slot cuisine )
    (slot difficulty )
    (slot ingredients )
    (slot instructions )
    (slot kcal )
    (multislot nutritional_values)
)



(deffunction nth (?index ?list)
   (return (nth$ ?index ?list)))

(deffunction length (?list)
   (return (length$ ?list)))



(deftemplate DailyMealPlan
    (slot day)
    (multislot breakfast)
    (multislot lunch)
    (multislot dinner)
)

(deftemplate day
   (slot name))



(deffacts SampleFoodRecipes
    (FoodRecipe 
        (name "Spaghetti Carbonara") 
        (cuisine Italian) 
        (difficulty Easy)
        (ingredients "spaghetti, eggs, bacon, parmesan cheese") 
        (instructions "1. Cook spaghetti. 2. Fry bacon. 3. Mix eggs and cheese. 4. Toss with pasta.")
        (kcal 550)
        (nutritional_values proteins 20 carbs 30 fats 15)
    )

    (FoodRecipe
        (name "Pizza") 
        (cuisine Italian) 
        (difficulty Difficult)
        (ingredients "flour, ketchup, tomato, onion, baking powder, olive oil, cheese, mushroom, oregano, mozzarella cheese, yeast, water") 
        (instructions "1. Cook spaghetti. 2. Fry bacon. 3. Mix eggs and cheese. 4. Toss with pasta.")
        (kcal 450)
        (nutritional_values proteins 15 carbs 40 fats 10)
    )

    (FoodRecipe 
        (name "Chicken Tikka Masala") 
        (cuisine Indian) 
        (difficulty Intermediate)
        (ingredients "chicken, yogurt, tomato sauce, spices") 
        (instructions "1. Marinate chicken. 2. Cook chicken. 3. Simmer in sauce.")
        (kcal 600)
        (nutritional_values proteins 25 carbs 20 fats 20)
    )

    (FoodRecipe 
        (name "Caesar Salad") 
        (cuisine American) 
        (difficulty Easy)
        (ingredients "romaine lettuce, croutons, caesar dressing") 
        (instructions "1. Toss lettuce with dressing. 2. Add croutons.")
        (kcal 200)
        (nutritional_values proteins 10 carbs 15 fats 8)
    )

    (FoodRecipe
        (name "Bakso") 
        (cuisine Indonesian) 
        (difficulty Intermediate)
        (ingredients "ground meat, garlic, water, bones, onions, noodle") 
        (instructions "1. Mix ground meat with seasonings and shape into small meatballs. 2. Boil water with bones, garlic, and onions for flavor. 3. Strain, season, and simmer the broth. 4. Boil noodles until al dente. 5. Place noodles and meatballs in a bowl, pour hot broth, and garnish.")
        (kcal 350)
        (nutritional_values proteins 18 carbs 25 fats 12)
    )

    (FoodRecipe 
        (name "Mie Aceh") 
        (cuisine Indonesian) 
        (difficulty Intermediate)
        (ingredients "noodle, water, oil, garlic, shallots, beef, Aceh chili paste, coconut milk, kaffir lime leaves, lemongrass") 
        (instructions "1. Boil water in a pot and cook your choice of noodles until al dente. 2. Heat oil in a separate pan and sauté garlic and shallots until fragrant. 3. Add beef and cook until browned. 4. Stir in Aceh chili paste and cook for a few minutes. 5. Pour in water and coconut milk, then add kaffir lime leaves and lemongrass. 6. Simmer until the broth thickens and the flavors meld. 7. Serve the cooked noodles in a bowl and pour the flavorful broth over them.")
        (kcal 500)
        (nutritional_values proteins 22 carbs 35 fats 18)
    )
    (FoodRecipe 
        (name "Lasagna") 
        (cuisine Italian) 
        (difficulty Intermediate)
        (ingredients "lasagna noodles, ground beef, marinara sauce, ricotta cheese, mozzarella cheese, parmesan cheese, onion, garlic, olive oil, salt, pepper") 
        (instructions "1. Preheat oven to 375°F (190°C). 2. In a skillet, heat olive oil and sauté onion and garlic. Add ground beef and cook until browned. 3. Add marinara sauce and simmer. 4. In a separate bowl, mix ricotta cheese, mozzarella cheese, and parmesan cheese. 5. In a baking dish, layer noodles, meat sauce, and cheese mixture. Repeat layers. 6. Cover with foil and bake for 25 minutes. Remove foil and bake for an additional 25 minutes. Let it cool before serving.")
        (kcal 600)
        (nutritional_values proteins 30 carbs 40 fats 20)
    )

    (FoodRecipe 
        (name "Sushi Rolls") 
        (cuisine Japanese) 
        (difficulty Intermediate)
        (ingredients "sushi rice, nori seaweed, cucumber, avocado, crab sticks, sesame seeds, soy sauce, wasabi, pickled ginger") 
        (instructions "1. Cook sushi rice according to package instructions. 2. Place a sheet of nori on a bamboo rolling mat. 3. Spread rice evenly on the nori, leaving a 1-inch border at the top. 4. Arrange cucumber, avocado, and crab sticks in the center. 5. Roll the sushi tightly using the bamboo mat. 6. Slice into bite-sized pieces. 7. Serve with soy sauce, wasabi, and pickled ginger.")
        (kcal 300)
        (nutritional_values proteins 15 carbs 50 fats 5)
    )

    (FoodRecipe 
        (name "Beef Stroganoff") 
        (cuisine Russian) 
        (difficulty Intermediate)
        (ingredients "beef sirloin, onion, garlic, mushrooms, beef broth, sour cream, dijon mustard, Worcestershire sauce, egg noodles, butter, salt, pepper") 
        (instructions "1. Slice beef into thin strips. 2. In a skillet, melt butter and sauté onion and garlic. Add beef and cook until browned. 3. Add mushrooms and cook until softened. 4. Stir in beef broth, sour cream, dijon mustard, and Worcestershire sauce. Simmer until sauce thickens. 5. Cook egg noodles according to package instructions. 6. Serve beef stroganoff over cooked noodles.")
        (kcal 450)
        (nutritional_values proteins 35 carbs 30 fats 25)
    )

    (FoodRecipe 
        (name "Tacos") 
        (cuisine Mexican) 
        (difficulty Easy)
        (ingredients "ground beef, taco seasoning, tortillas, lettuce, tomato, onion, cheese, salsa, sour cream, avocado") 
        (instructions "1. Brown ground beef in a skillet and drain excess fat. 2. Stir in taco seasoning and cook according to package instructions. 3. Warm tortillas in a separate skillet. 4. Assemble tacos with beef, lettuce, tomato, onion, cheese, salsa, sour cream, and avocado.")
        (kcal 650)
        (nutritional_values proteins 20 carbs 25 fats 18)
    )

    (FoodRecipe 
        (name "Chicken Curry") 
        (cuisine Indian) 
        (difficulty Intermediate)
        (ingredients "chicken thighs, onion, garlic, ginger, tomatoes, curry powder, coconut milk, cilantro, rice") 
        (instructions "1. Heat oil in a pan and sauté onion, garlic, and ginger until fragrant. 2. Add chicken and cook until browned. 3. Stir in curry powder and cook for a minute. 4. Add tomatoes and coconut milk. Simmer until chicken is cooked through. 5. Garnish with cilantro and serve with rice.")
        (kcal 450)
        (nutritional_values proteins 25 carbs 35 fats 15)
    )

    (FoodRecipe 
        (name "Pancakes") 
        (cuisine American) 
        (difficulty Easy)
        (ingredients "flour, milk, eggs, sugar, baking powder, salt, butter, maple syrup, fruits (optional)") 
        (instructions "1. In a bowl, mix flour, sugar, baking powder, and salt. 2. In another bowl, beat eggs and mix with milk. 3. Combine wet and dry ingredients until just mixed. 4. Heat butter on a griddle and pour batter to make pancakes. 5. Cook until bubbles form, flip and cook until golden brown. 6. Serve with maple syrup and fruits if desired.")
        (kcal 250)
        (nutritional_values proteins 8 carbs 40 fats 5)
    )
    (FoodRecipe 
        (name "Grilled Salmon") 
        (cuisine Seafood) 
        (difficulty Intermediate)
        (ingredients "salmon fillets, olive oil, lemon, garlic, salt, pepper, herbs (optional)") 
        (instructions "1. Preheat grill to medium-high heat. 2. Rub salmon fillets with olive oil, lemon juice, minced garlic, salt, pepper, and herbs if desired. 3. Grill salmon for 4-5 minutes on each side, or until desired doneness. 4. Serve hot with lemon wedges.")
        (kcal 300)
        (nutritional_values proteins 25 carbs 0 fats 20)
    )

    (FoodRecipe 
        (name "Vegetable Stir-Fry") 
        (cuisine Asian) 
        (difficulty Easy)
        (ingredients "assorted vegetables (bell peppers, broccoli, carrots, snap peas, mushrooms), tofu or chicken, soy sauce, ginger, garlic, sesame oil") 
        (instructions "1. Heat sesame oil in a wok or skillet. 2. Stir-fry ginger and garlic until fragrant. 3. Add vegetables and protein (tofu or chicken). Stir-fry until cooked through. 4. Add soy sauce and toss to combine. 5. Serve hot.")
        (kcal 250)
        (nutritional_values proteins 15 carbs 30 fats 10)
    )

    (FoodRecipe 
        (name "Ratatouille") 
        (cuisine French) 
        (difficulty Intermediate)
        (ingredients "eggplant, zucchini, bell peppers, tomatoes, onion, garlic, olive oil, thyme, basil, salt, pepper") 
        (instructions "1. Preheat oven to 375°F (190°C). 2. Slice eggplant, zucchini, bell peppers, and tomatoes thinly. 3. Layer vegetables in a baking dish with sliced onion and minced garlic. 4. Drizzle with olive oil and sprinkle with thyme, basil, salt, and pepper. 5. Cover with foil and bake for 45 minutes. Remove foil and bake for an additional 15 minutes. 6. Serve hot as a side dish or over cooked grains.")
        (kcal 250)
        (nutritional_values proteins 5 carbs 25 fats 8)
    )

    (FoodRecipe 
        (name "Shrimp Scampi") 
        (cuisine Italian) 
        (difficulty Intermediate)
        (ingredients "shrimp, linguine pasta, butter, olive oil, garlic, lemon, white wine, parsley, salt, pepper, red pepper flakes (optional)") 
        (instructions "1. Cook linguine pasta according to package instructions. 2. In a skillet, melt butter and olive oil. 3. Add minced garlic and cook until fragrant. 4. Add shrimp and cook until pink. 5. Stir in lemon juice, white wine, and red pepper flakes if desired. 6. Toss cooked pasta with shrimp mixture. 7. Garnish with chopped parsley and serve hot.")
        (kcal 350)
        (nutritional_values proteins 20 carbs 40 fats 15)
    )

    (FoodRecipe 
        (name "Caprese Salad") 
        (cuisine Italian) 
        (difficulty Easy)
        (ingredients "tomatoes, fresh mozzarella cheese, fresh basil, balsamic glaze, olive oil, salt, pepper") 
        (instructions "1. Slice tomatoes and fresh mozzarella cheese. 2. Arrange slices on a plate, alternating between tomato and cheese. 3. Tuck fresh basil leaves between tomato and cheese slices. 4. Drizzle with balsamic glaze and olive oil. 5. Season with salt and pepper to taste.")
        (kcal 200)
        (nutritional_values proteins 15 carbs 5 fats 15)
    )

    (FoodRecipe 
        (name "Beef Wellington") 
        (cuisine British) 
        (difficulty Difficult)
        (ingredients "beef tenderloin, puff pastry, mushrooms, shallots, garlic, butter, thyme, prosciutto, egg wash") 
        (instructions "1. Sear beef tenderloin until browned on all sides. Let it cool. 2. Sauté mushrooms, shallots, and garlic in butter until soft. Add thyme and cook for a few minutes. Let it cool. 3. Roll out puff pastry and layer with prosciutto and mushroom mixture. Place beef tenderloin on top. 4. Wrap the pastry around the beef and seal the edges. Brush with egg wash. 5. Bake in a preheated oven at 400°F (200°C) for 25-30 minutes, or until pastry is golden brown and beef is cooked to your liking.")
        (kcal 500)
        (nutritional_values proteins 30 carbs 25 fats 35)
    )
    (FoodRecipe 
        (name "Beef Tacos") 
        (cuisine Mexican) 
        (difficulty Easy)
        (ingredients "ground beef, taco seasoning, tortillas, lettuce, tomato, onion, cheese, salsa, sour cream, avocado") 
        (instructions "1. Brown ground beef in a skillet and drain excess fat. 2. Stir in taco seasoning and cook according to package instructions. 3. Warm tortillas in a separate skillet. 4. Assemble tacos with beef, lettuce, tomato, onion, cheese, salsa, sour cream, and avocado.")
        (kcal 500)
        (nutritional_values proteins 20 carbs 25 fats 18)
    )

    (FoodRecipe 
        (name "Chicken Alfredo Pasta") 
        (cuisine Italian) 
        (difficulty Intermediate)
        (ingredients "chicken breasts, fettuccine pasta, heavy cream, butter, garlic, Parmesan cheese, salt, pepper, parsley") 
        (instructions "1. Cook fettuccine pasta according to package instructions. 2. Season chicken breasts with salt and pepper, then grill or pan-sear until cooked through. 3. In a saucepan, melt butter and sauté minced garlic until fragrant. 4. Add heavy cream and Parmesan cheese, stirring until sauce thickens. 5. Toss cooked pasta with the Alfredo sauce. 6. Slice chicken and place on top of the pasta. 7. Garnish with chopped parsley and serve hot.")
        (kcal 500)
        (nutritional_values proteins 30 carbs 40 fats 25)
    )

    (FoodRecipe 
        (name "Vegetarian Chili") 
        (cuisine American) 
        (difficulty Easy)
        (ingredients "kidney beans, black beans, corn, bell peppers, onion, garlic, tomatoes, vegetable broth, chili powder, cumin, paprika, salt, pepper") 
        (instructions "1. In a large pot, sauté chopped onion and minced garlic until softened. 2. Add diced bell peppers and cook until tender. 3. Stir in diced tomatoes, drained and rinsed kidney beans, black beans, and corn. 4. Pour in vegetable broth and add chili powder, cumin, paprika, salt, and pepper to taste. 5. Simmer for 20-25 minutes. 6. Serve hot, optionally topped with shredded cheese, sour cream, and chopped cilantro.")
        (kcal 300)
        (nutritional_values proteins 15 carbs 50 fats 5)
    )

    (FoodRecipe 
        (name "Tiramisu") 
        (cuisine Italian) 
        (difficulty Difficult)
        (ingredients "ladyfinger cookies, espresso coffee, mascarpone cheese, heavy cream, sugar, cocoa powder, dark chocolate") 
        (instructions "1. Brew espresso coffee and let it cool. 2. In a bowl, whip heavy cream until stiff peaks form. 3. In another bowl, mix mascarpone cheese and sugar until smooth. 4. Gently fold whipped cream into the mascarpone mixture. 5. Dip ladyfinger cookies into espresso and layer them in a dish. 6. Spread a layer of the mascarpone mixture over the cookies. Repeat layers. 7. Dust the top with cocoa powder and garnish with grated dark chocolate. 8. Refrigerate for at least 4 hours before serving.")
        (kcal 700)
        (nutritional_values proteins 10 carbs 30 fats 25)
    )

    (FoodRecipe 
        (name "Veggie Pizza") 
        (cuisine Italian) 
        (difficulty Easy)
        (ingredients "pizza dough, pizza sauce, mozzarella cheese, bell peppers, mushrooms, onions, olives, tomatoes, basil") 
        (instructions "1. Preheat oven to 425°F (220°C). 2. Roll out pizza dough and spread pizza sauce evenly. 3. Sprinkle shredded mozzarella cheese over the sauce. 4. Top with sliced bell peppers, mushrooms, onions, olives, and tomatoes. 5. Bake for 12-15 minutes or until the crust is golden brown and the cheese is bubbly. 6. Garnish with fresh basil before serving.")
        (kcal 300)
        (nutritional_values proteins 15 carbs 35 fats 12)
    )

    (FoodRecipe 
        (name "Chicken Caesar Salad") 
        (cuisine Italian) 
        (difficulty Easy)
        (ingredients "romaine lettuce, grilled chicken breast, croutons, Caesar dressing, Parmesan cheese") 
        (instructions "1. Chop romaine lettuce and place it in a large bowl. 2. Slice grilled chicken breast into strips and add to the bowl. 3. Toss with croutons, Caesar dressing, and grated Parmesan cheese until evenly coated. 4. Serve immediately.")
        (kcal 250)
        (nutritional_values proteins 20 carbs 10 fats 15)
    )
     (FoodRecipe 
        (name "Sarmale") 
        (cuisine Romanian) 
        (difficulty Intermediate)
        (ingredients "cabbage leaves, ground pork, rice, onion, garlic, tomato sauce, thyme, bay leaves, salt, pepper") 
        (instructions "1. Blanch cabbage leaves in boiling water until softened. 2. In a bowl, mix ground pork, cooked rice, finely chopped onion, minced garlic, thyme, salt, and pepper. 3. Place a spoonful of the pork mixture onto each cabbage leaf and roll tightly. 4. Place rolled cabbage leaves in a pot, seam side down. 5. Cover with tomato sauce, bay leaves, and water. 6. Simmer over low heat for 2-3 hours. 7. Serve hot with sour cream and polenta.")
        (kcal 450)
        (nutritional_values proteins 20 carbs 30 fats 18)
    )

    (FoodRecipe 
        (name "Mămăligă") 
        (cuisine Romanian) 
        (difficulty Easy)
        (ingredients "cornmeal, water, salt, butter, cheese (optional)") 
        (instructions "1. Bring water to a boil in a pot. 2. Gradually add cornmeal while stirring continuously to avoid lumps. 3. Reduce heat and simmer, stirring frequently, until thickened. 4. Stir in salt and butter until melted. 5. Optional: Serve topped with grated cheese.")
        (kcal 200)
        (nutritional_values proteins 5 carbs 40 fats 8)
    )

    (FoodRecipe 
        (name "Hummus") 
        (cuisine Arabic) 
        (difficulty Easy)
        (ingredients "chickpeas, tahini, lemon juice, garlic, olive oil, cumin, salt, paprika, parsley") 
        (instructions "1. Rinse and drain chickpeas. 2. In a food processor, blend chickpeas, tahini, lemon juice, minced garlic, cumin, salt, and olive oil until smooth. 3. Adjust seasoning to taste. 4. Transfer to a serving bowl, drizzle with olive oil, and sprinkle with paprika and chopped parsley. 5. Serve with pita bread or vegetables.")
        (kcal 250)
        (nutritional_values proteins 10 carbs 20 fats 15)
    )

    (FoodRecipe 
        (name "Mansaf") 
        (cuisine Arabic) 
        (difficulty Difficult)
        (ingredients "lamb, yogurt, rice, flatbread, almonds, pine nuts, clarified butter, parsley, onion, garlic, cinnamon, cardamom, salt, pepper") 
        (instructions "1. Cook lamb in a large pot with onion, garlic, cinnamon, cardamom, salt, and pepper until tender. 2. In a separate pot, simmer yogurt with water until heated through. 3. Toast almonds and pine nuts in clarified butter until golden. 4. Arrange cooked rice on a large platter, top with cooked lamb, and pour yogurt sauce over the meat. 5. Garnish with toasted nuts, chopped parsley, and serve with flatbread.")
        (kcal 500)
        (nutritional_values proteins 30 carbs 40 fats 25)
    )

    (FoodRecipe 
        (name "Falafel") 
        (cuisine Arabic) 
        (difficulty Intermediate)
        (ingredients "chickpeas, onion, garlic, parsley, cumin, coriander, baking powder, flour, salt, pepper, vegetable oil") 
        (instructions "1. Soak chickpeas overnight, then drain well. 2. In a food processor, blend chickpeas, onion, garlic, parsley, cumin, coriander, baking powder, flour, salt, and pepper until a coarse mixture forms. 3. Shape mixture into small balls or patties. 4. Heat vegetable oil in a skillet and fry falafel until golden brown and crispy. 5. Serve hot with tahini sauce, salad, and pita bread.")
        (kcal 300)
        (nutritional_values proteins 15 carbs 30 fats 18)
    )
    (FoodRecipe 
        (name "Ciorbă de Perișoare") 
        (cuisine Romanian) 
        (difficulty Intermediate)
        (ingredients "ground pork, rice, onion, garlic, carrot, celery, parsley, dill, eggs, sour cream, flour, lemon, salt, pepper") 
        (instructions "1. In a bowl, mix ground pork with cooked rice, finely chopped onion, minced garlic, chopped parsley, salt, and pepper. 2. Form small meatballs and set aside. 3. In a pot, bring water to a boil and add diced carrot and celery. 4. Add the meatballs and simmer until cooked through. 5. In a separate bowl, whisk eggs with sour cream, flour, and lemon juice. 6. Gradually add some hot broth to the egg mixture to temper it. 7. Pour the tempered egg mixture into the pot while stirring constantly. 8. Simmer until slightly thickened. 9. Serve hot garnished with chopped dill.")
        (kcal 300)
        (nutritional_values proteins 20 carbs 25 fats 15)
    )

    (FoodRecipe 
        (name "Mici (Mititei)") 
        (cuisine Romanian) 
        (difficulty Intermediate)
        (ingredients "ground beef, ground pork, garlic, paprika, thyme, black pepper, salt, baking soda, mineral water") 
        (instructions "1. In a bowl, mix ground beef and ground pork with minced garlic, paprika, thyme, black pepper, salt, and baking soda. 2. Gradually add mineral water while kneading the mixture until smooth and slightly sticky. 3. Shape the mixture into sausage-like rolls. 4. Grill or pan-fry the mici until cooked through and slightly crispy on the outside. 5. Serve hot with mustard, bread, and pickles.")
        (kcal 350)
        (nutritional_values proteins 25 carbs 10 fats 25)
    )

    (FoodRecipe 
        (name "Plăcintă cu Brânză și Mărar") 
        (cuisine Romanian) 
        (difficulty Intermediate)
        (ingredients "phyllo dough, feta cheese, cottage cheese, eggs, sour cream, dill, butter, salt, pepper") 
        (instructions "1. Preheat oven to 350°F (175°C). 2. In a bowl, mix crumbled feta cheese and cottage cheese with beaten eggs, sour cream, chopped dill, salt, and pepper. 3. Layer phyllo dough sheets in a greased baking dish, brushing each sheet with melted butter. 4. Spread the cheese mixture evenly over the phyllo dough. 5. Cover with remaining phyllo dough sheets, brushing each sheet with melted butter. 6. Bake for 40-45 minutes or until golden brown. 7. Serve warm or cold.")
        (kcal 600)
        (nutritional_values proteins 15 carbs 20 fats 18)
    )

    (FoodRecipe 
        (name "Mămăligă cu Brânză și Smântână") 
        (cuisine Romanian) 
        (difficulty Easy)
        (ingredients "cornmeal, water, salt, feta cheese, sour cream") 
        (instructions "1. Bring water to a boil in a pot. 2. Gradually add cornmeal while stirring continuously to avoid lumps. 3. Reduce heat and simmer, stirring frequently, until thickened. 4. Stir in salt and crumbled feta cheese until melted and well combined. 5. Serve hot topped with sour cream.")
        (kcal 300)
        (nutritional_values proteins 10 carbs 40 fats 12)
    )

    (FoodRecipe 
        (name "Salată de Vinete") 
        (cuisine Romanian) 
        (difficulty Easy)
        (ingredients "eggplant, onion, garlic, vegetable oil, vinegar, salt, pepper, parsley") 
        (instructions "1. Preheat oven to 400°F (200°C). 2. Prick eggplants with a fork and roast in the oven until soft and charred. 3. Let eggplants cool, then peel and chop finely. 4. In a bowl, mix chopped eggplants with finely chopped onion, minced garlic, vegetable oil, vinegar, salt, and pepper. 5. Garnish with chopped parsley before serving. 6. Serve chilled with crusty bread.")
        (kcal 200)
        (nutritional_values proteins 5 carbs 15 fats 10)
    )
	(FoodRecipe 
	   (name "BBQ Ribs") 
	   (cuisine American) 
	   (difficulty Intermediate)
	   (ingredients "pork ribs, BBQ sauce, brown sugar, paprika, garlic powder, onion powder, black pepper") 
	   (instructions "1. Season ribs with spices. 2. Slow cook ribs. 3. Baste with BBQ sauce and bake until tender.")
	   (kcal 1200)
	   (nutritional_values proteins 70 carbs 60 fats 110)
	)

	(FoodRecipe 
	   (name "Butter Chicken") 
	   (cuisine Indian) 
	   (difficulty Intermediate)
	   (ingredients "chicken, tomato puree, heavy cream, butter, garlic, ginger, garam masala, cumin, coriander, turmeric") 
	   (instructions "1. Marinate and cook chicken. 2. Prepare sauce with tomatoes, cream, and spices. 3. Combine and simmer.")
	   (kcal 1000)
	   (nutritional_values proteins 50 carbs 50 fats 70)
	)

	(FoodRecipe 
	   (name "Lasagna") 
	   (cuisine Italian) 
	   (difficulty Advanced)
	   (ingredients "ground beef, ricotta cheese, mozzarella cheese, parmesan cheese, lasagna noodles, marinara sauce, onions, garlic") 
	   (instructions "1. Cook beef and sauce. 2. Layer noodles, cheeses, and sauce. 3. Bake until bubbly and golden.")
	   (kcal 1100)
	   (nutritional_values proteins 60 carbs 40 fats 90)
	)

		(FoodRecipe 
	   (name "Chicken Fried Steak") 
	   (cuisine American) 
	   (difficulty Intermediate)
	   (ingredients "cube steak, flour, eggs, milk, black pepper, salt, vegetable oil") 
	   (instructions "1. Bread and fry steak. 2. Prepare gravy with pan drippings, flour, and milk. 3. Serve with mashed potatoes.")
	   (kcal 950)
	   (nutritional_values proteins 40 carbs 60 fats 80)
	)

		(FoodRecipe 
	   (name "Baked Ziti") 
	   (cuisine Italian-American) 
	   (difficulty Easy)
	   (ingredients "ziti pasta, ricotta cheese, mozzarella cheese, parmesan cheese, marinara sauce, ground beef, garlic, onions") 
	   (instructions "1. Cook pasta. 2. Prepare sauce with beef and garlic. 3. Layer pasta, cheeses, and sauce. 4. Bake until bubbly.")
	   (kcal 1000)
	   (nutritional_values proteins 50 carbs 50 fats 80)
	)

	(FoodRecipe 
	   (name "Chocolate Cake") 
	   (cuisine Dessert) 
	   (difficulty Intermediate)
	   (ingredients "flour, sugar, cocoa powder, baking powder, eggs, milk, butter, vanilla extract, chocolate frosting") 
	   (instructions "1. Prepare cake batter and bake. 2. Prepare frosting. 3. Frost cooled cake layers and assemble.")
	   (kcal 950)
	   (nutritional_values proteins 30 carbs 40 fats 100)
	)

	(FoodRecipe 
	   (name "Cheeseburger") 
	   (cuisine American) 
	   (difficulty Easy)
	   (ingredients "ground beef, cheddar cheese, burger buns, lettuce, tomato, onion, pickles, ketchup, mustard") 
	   (instructions "1. Form beef patties and grill. 2. Melt cheese on patties. 3. Assemble burgers with buns, lettuce, tomato, onion, pickles, ketchup, and mustard.")
	   (kcal 1050)
	   (nutritional_values proteins 55 carbs 45 fats 90)
	)

		(FoodRecipe 
	   (name "Fettuccine Alfredo") 
	   (cuisine Italian) 
	   (difficulty Intermediate)
	   (ingredients "fettuccine pasta, heavy cream, butter, parmesan cheese, garlic, parsley, salt, pepper") 
	   (instructions "1. Cook pasta. 2. Prepare sauce with cream, butter, and garlic. 3. Toss pasta with sauce and sprinkle with parmesan and parsley.")
	   (kcal 1100)
	   (nutritional_values proteins 30 carbs 70 fats 100)
	)

	(FoodRecipe 
	   (name "Beef Stroganoff") 
	   (cuisine Russian) 
	   (difficulty Intermediate)
	   (ingredients "beef sirloin, mushrooms, onions, sour cream, beef broth, flour, butter, egg noodles") 
	   (instructions "1. Sauté beef, mushrooms, and onions. 2. Prepare sauce with broth, flour, and sour cream. 3. Combine with beef and serve over egg noodles.")
	   (kcal 1000)
	   (nutritional_values proteins 50 carbs 60 fats 90)
	)

	(FoodRecipe 
	   (name "Shrimp Scampi") 
	   (cuisine Italian) 
	   (difficulty Easy)
	   (ingredients "shrimp, garlic, butter, white wine, lemon juice, parsley, spaghetti, olive oil, red pepper flakes") 
	   (instructions "1. Cook spaghetti. 2. Sauté shrimp with garlic and red pepper flakes. 3. Add wine and lemon juice, then toss with pasta and parsley.")
	   (kcal 900)
	   (nutritional_values proteins 40 carbs 60 fats 80)
	)
	
	(FoodRecipe
		(name "Loaded Baked Potato")
		(cuisine American)
		(difficulty Intermediate)
		(ingredients "potatoes, bacon, cheddar cheese, sour cream, chives")
		(instructions "1. Bake potatoes until tender. 2. Fry bacon until crispy. 3. Load potatoes with bacon, cheese, sour cream, and chives.")
		(kcal 950)
		(nutritional_values proteins 25 carbs 80 fats 60)
	)

	(FoodRecipe
		(name "Alfredo Pasta with Chicken and Bacon")
		(cuisine Italian)
		(difficulty Intermediate)
		(ingredients "fettuccine pasta, chicken breast, bacon, heavy cream, Parmesan cheese, garlic, butter")
		(instructions "1. Cook pasta according to package instructions. 2. Sauté chicken and bacon until cooked through. 3. Prepare Alfredo sauce with heavy cream, Parmesan, garlic, and butter. 4. Toss pasta with sauce, chicken, and bacon.")
		(kcal 980)
		(nutritional_values proteins 45 carbs 65 fats 75)
	)

	(FoodRecipe
		(name "Beef Stroganoff")
		(cuisine Russian)
		(difficulty Intermediate)
		(ingredients "beef sirloin, mushrooms, onions, sour cream, beef broth, egg noodles")
		(instructions "1. Sauté beef and onions until browned. 2. Add mushrooms and cook until tender. 3. Stir in sour cream and beef broth. 4. Serve over cooked egg noodles.")
		(kcal 920)
		(nutritional_values proteins 50 carbs 55 fats 70)
	)

	(FoodRecipe
		(name "Cheeseburger Macaroni")
		(cuisine American)
		(difficulty Easy)
		(ingredients "ground beef, elbow macaroni, cheddar cheese, diced tomatoes, beef broth, onion, garlic")
		(instructions "1. Brown ground beef with onion and garlic. 2. Add macaroni, diced tomatoes, and beef broth. 3. Simmer until macaroni is cooked. 4. Stir in cheddar cheese until melted.")
		(kcal 1000)
		(nutritional_values proteins 40 carbs 70 fats 80)
	)

	(FoodRecipe
		(name "Deep Dish Meat Lover's Pizza")
		(cuisine Italian)
		(difficulty Advanced)
		(ingredients "pizza dough, Italian sausage, pepperoni, bacon, mozzarella cheese, pizza sauce")
		(instructions "1. Press pizza dough into a deep dish pan. 2. Layer with pizza sauce, mozzarella, Italian sausage, pepperoni, and bacon. 3. Bake until crust is golden and toppings are bubbly.")
		(kcal 1050)
		(nutritional_values proteins 60 carbs 80 fats 90)
	)

	(FoodRecipe
		(name "Creamy Chicken and Rice Casserole")
		(cuisine American)
		(difficulty Intermediate)
		(ingredients "chicken thighs, rice, cream of mushroom soup, chicken broth, broccoli, cheddar cheese")
		(instructions "1. Cook rice according to package instructions. 2. Brown chicken thighs. 3. Mix cooked rice, chicken, broccoli, cream of mushroom soup, and chicken broth in a casserole dish. 4. Top with cheddar cheese and bake until bubbly.")
		(kcal 980)
		(nutritional_values proteins 55 carbs 75 fats 70)
	)

	(FoodRecipe
		(name "Sausage and Cheese Stuffed Mushrooms")
		(cuisine Italian)
		(difficulty Easy)
		(ingredients "large mushrooms, Italian sausage, cream cheese, Parmesan cheese, garlic, breadcrumbs")
		(instructions "1. Remove stems from mushrooms and fill with mixture of cooked Italian sausage, cream cheese, Parmesan, garlic, and breadcrumbs. 2. Bake until mushrooms are tender and filling is bubbly.")
		(kcal 920)
		(nutritional_values proteins 35 carbs 40 fats 85)
	)

	(FoodRecipe
		(name "Fettuccine Alfredo with Shrimp")
		(cuisine Italian)
		(difficulty Intermediate)
		(ingredients "fettuccine pasta, shrimp, heavy cream, Parmesan cheese, garlic, butter")
		(instructions "1. Cook pasta according to package instructions. 2. Sauté shrimp until pink and cooked through. 3. Prepare Alfredo sauce with heavy cream, Parmesan, garlic, and butter. 4. Toss pasta with sauce and shrimp.")
		(kcal 960)
		(nutritional_values proteins 40 carbs 70 fats 75)
	)

	(FoodRecipe
		(name "Loaded Nachos")
		(cuisine Mexican)
		(difficulty Easy)
		(ingredients "tortilla chips, ground beef, cheddar cheese, black beans, jalapeños, sour cream, guacamole")
		(instructions "1. Spread tortilla chips on a baking sheet. 2. Top with cooked ground beef, cheddar cheese, black beans, and jalapeños. 3. Bake until cheese is melted. 4. Serve with sour cream and guacamole.")
		(kcal 940)
		(nutritional_values proteins 30 carbs 50 fats 80)
	)

	(FoodRecipe
		(name "Beef and Cheese Quesadillas")
		(cuisine Mexican)
		(difficulty Easy)
		(ingredients "flour tortillas, steak strips, cheddar cheese, bell peppers, onions, salsa, sour cream")
		(instructions "1. Sauté steak strips with bell peppers and onions until cooked. 2. Place mixture on half of a tortilla, top with cheddar cheese, and fold in half. 3. Cook in a skillet until tortilla is crispy and cheese is melted. 4. Serve with salsa and sour cream.")
		(kcal 970)
		(nutritional_values proteins 45 carbs 60 fats 70)
	)
    (BMR 0)

)

(defrule initialize-days
    =>
    (assert (day (name Monday)))
    (assert (day (name Tuesday)))
    (assert (day (name Wednesday)))
    (assert (day (name Thursday)))
    (assert (day (name Friday)))
    (assert (day (name Saturday)))
    (assert (day (name Sunday))))

(defrule generate-daily-meal-plan
    (declare (salience -9))
    (kcal ?dailyKcal)
    (day (name ?day))
    =>
    (bind ?breakfastKcal (* ?dailyKcal 0.3))
    (bind ?lunchKcal (* ?dailyKcal 0.4))
    (bind ?dinnerKcal (* ?dailyKcal 0.3))

    ;; Selectare aleatorie mic dejun
    (bind ?breakfastRecipes (find-all-facts ((?r FoodRecipe)) (<= (fact-slot-value ?r kcal) ?breakfastKcal)))
    (bind ?selectedBreakfast (nth (random 1 (length ?breakfastRecipes)) ?breakfastRecipes))
    (bind ?breakfastList (create$ (fact-slot-value ?selectedBreakfast name) (str-cat "(" (fact-slot-value ?selectedBreakfast kcal) "kcal)")))

    ;; Selectare aleatorie pranz
    (bind ?lunchRecipes (find-all-facts ((?r FoodRecipe)) (<= (fact-slot-value ?r kcal) ?lunchKcal)))
    (bind ?selectedLunch (nth (random 1 (length ?lunchRecipes)) ?lunchRecipes))
    (bind ?lunchList (create$ (fact-slot-value ?selectedLunch name) (str-cat "(" (fact-slot-value ?selectedLunch kcal) "kcal)")))

    ;; Selectare aleatorie cina
    (bind ?dinnerRecipes (find-all-facts ((?r FoodRecipe)) (<= (fact-slot-value ?r kcal) ?dinnerKcal)))
    (bind ?selectedDinner (nth (random 1 (length ?dinnerRecipes)) ?dinnerRecipes))
    (bind ?dinnerList (create$ (fact-slot-value ?selectedDinner name) (str-cat "(" (fact-slot-value ?selectedDinner kcal) "kcal)")))

    ;; Creare fapt pentru planul zilnic
    (assert (DailyMealPlan 
                (day ?day) 
                (breakfast ?breakfastList) 
                (lunch ?lunchList) 
                (dinner ?dinnerList)))
)

(defrule generate-weekly-meal-plan
    (declare (salience -10))
    (kcal ?dailyKcal)
    =>
    (assert (start))
)

(defrule start-daily-plan-generation
    (declare (salience -11))
    (start)
    =>
    (do-for-all-facts ((?d day))
        (assert (day (name (fact-slot-value ?d name))))
        (run 1)
        (retract ?d)
    )
)

(defrule print-weekly-meal-plan
    (declare (salience -12))
    (not (day (name ?))) ;; Asigurăm că toate zilele au fost procesate
    =>
    ;; Afișare planuri pentru întreaga săptămână
    (do-for-all-facts ((?mealPlan DailyMealPlan))
        (printout t "Meal plan for " (fact-slot-value ?mealPlan day) ":" crlf)
        (printout t "Breakfast: " (fact-slot-value ?mealPlan breakfast) crlf)
        (printout t "Lunch: " (fact-slot-value ?mealPlan lunch) crlf)
        (printout t "Dinner: " (fact-slot-value ?mealPlan dinner) crlf)
        (printout t crlf)
    )
)


(defrule R1
=>
(open intrareClips.txt fdate "r")
(open iesire.txt fiesire "w")
(assert (faza citire) ) 
)


(defrule R2
?a <- (faza citire)
=>
(retract ?a)
(assert (valoare-citita (readline fdate))) 
)


(defrule R3
"regula ce actioneaza atunci cand valoarea citita din fisier este EOF"
?a <-(valoare-citita EOF)
=>
(retract ?a)
(assert (faza oprire))
)


(defrule R4
?a <- (faza oprire)
=>
(retract ?a)
)


(defrule R5
?a <- (valoare-citita ?v)
=>
(retract ?a)
(str-assert(str-cat "( " ?v ")" ))
(assert (faza citire)) 
)


(defrule R6
(declare (salience -7))
=>
(close fdate)
(close fiesire)
)


(defrule afisareBMI
(declare (salience -14))
(BMR_calculat ?bmr)
=>
(printout t "BMR: " ?bmr crlf)

)
(defrule afisareKcal
(declare (salience -12))
(kcal ?kcal)
=>
(printout t "Sa afisat necesarul de kcal necesar : " ?kcal crlf)
)

(defrule bmr_formula (declare (salience -15))
(informatie gen ?gen)
(informatie inaltime ?inaltime)
(informatie greutate ?greutate)
(informatie varsta ?varsta)
(informatie bmi ?bmi)
?bmr <- (BMR ?x)
=>
   (retract ?bmr)
   (if (eq ?gen masculin)
        then
        (assert (BMR_calculat (+ 66.5  (+ (* 13.7 ?greutate) (- (* 5 ?inaltime)  (* 6.8 ?varsta)))))))
    (if (eq ?gen feminin)
        then
        (assert (BMR_calculat (+ 655  (+ (* 9.6 ?greutate) (- (* 1.8 ?inaltime)  (* 4.7 ?varsta)))))))
    (printout t "Ceva: " ?gen " "?bmi " "?greutate " "?inaltime " "?varsta  crlf)
)

(defrule kcal_amount 
	(declare (salience -13))
	(BMR_calculat ?bmr)
	(informatie nivelDeActivitate ?nivelDeActivitate)
=>
	(if (eq ?nivelDeActivitate FaraExercitii)
		then
			(assert (kcal (* 1.2 ?bmr))))
	(if (eq ?nivelDeActivitate rarExercitii)
		then
			(assert (kcal (* 1.375 ?bmr))))
	(if (eq ?nivelDeActivitate normal)
		then
			(assert (kcal (* 1.55 ?bmr))))
	(if (eq ?nivelDeActivitate foarteActiv)
		then
			(assert (kcal (* 1.725 ?bmr))))
	(if (eq ?nivelDeActivitate ExtraActiv)
		then
			(assert (kcal (* 1.9 ?bmr))))		
)

