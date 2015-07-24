# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Box.create(name: "Old-Fashioned",
    image: "http://i39.photobucket.com/albums/e175/indy3030/barbox/Old%20Fashioned%20Resize_zpsourjlaxo.jpeg",
    description: "Speak nice and easy with this timeless-yet-bold concoction of rye whiskey, blood orange syrup, small batch bitters, lemons, and fresh mint sprigs.  No passwords necessary here.",
    ingredients: "rye, blood orange syrup, grapefruit bitters, lemon peel",
    price: 100,
    drink_count: 12)
Box.create(name: "Cranberry Basil Julep",
    image: "http://i39.photobucket.com/albums/e175/indy3030/barbox/Basil%20Cranberry%20resize_zpswhi2zbdx.jpeg",
    description: "This subtly sweet-and-spicy cocktail comes with fresh basil, not-so-simple syrups made from real jalapenos and cranberries, lime juice, and smoky mezcal to tie it all together. It’s perfectly complicated, just like your relationship status.",
    ingredients: "mezcal, cranberry syrup, jalapeño syrup, basil leaves, lime",
    price: 100,
    drink_count: 12)
Box.create(name: "Rosemary Greyhound",
    image: "http://i39.photobucket.com/albums/e175/indy3030/barbox/rosemary-greyhound-2_zps9ofy8uen.jpg",
    description: "Reward yourself after a long week with this shaken up midsummer night’s classic: vodka, fresh squeezed grapefruit juice, rosemary-infused handcrafted simple syrup.  Pack your bags ‘cuz it might just take you places.",
    ingredients: "vodka, grapefruit, rosemary syrup",
    price: 100,
    drink_count: 12)
