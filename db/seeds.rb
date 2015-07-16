# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Box.create(name: "Classic Whiskey Smash",
	image: "http://i39.photobucket.com/albums/e175/indy3030/barbox/whiskey-smash-cocktail-recipe-6_zps1osksf6m.jpg",
	description: "Speak nice and easy with this timeless-yet-daring concoction of rye whiskey, artisanal simple syrup, organic lemons, and fresh mint sprigs.  No passwords necessary here.",
	ingredients: "rye, lemon, simple syrup, mint",
	price: 60,
	drink_count: 12)
Box.create(name: "Noche Sombrero",
	image: "http://i39.photobucket.com/albums/e175/indy3030/barbox/mezcallemon_zps9j8p6l1e.jpg",
	description: "This diplomatic cocktail is a global thinker, but a local actor.  Combining tequila, organic maple syrup, organic limes, and club soda, would you believe us if we told you it spurred the creation of NAFTA?",
	ingredients: "mezcal, lemon, honey syrup, club soda",
	price: 60,
	drink_count: 12)
Box.create(name: "Rosemary Greyhound",
	image: "http://i39.photobucket.com/albums/e175/indy3030/barbox/rosemary-greyhound-2_zpscaincmnd.jpg",
	description: "Reward yourself after a long week with this shaken up midsummer night’s classic: vodka, fresh squeezed grapefruit juice, rosemary-infused handcrafted simple syrup.  Pack your bags ‘cuz it might just take you places.",
	ingredients: "vodka, grapefruit, rosemary syrup",
	price: 60,
	drink_count: 12)
