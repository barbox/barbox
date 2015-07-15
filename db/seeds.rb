# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Box.create(name: "Classic Whiskey Smash",
	image: "https://slack-files.com/files-tmb/T07F8G7N2-F07L32HMF-e92d24ca25/screenshot_2015-07-13_at_12.50.17_pm_1024.png",
	description: "Speak nice and easy with this timeless-yet-daring concoction of rye whiskey, artisanal simple syrup, organic lemons, and fresh mint sprigs.  No passwords necessary here.",
	ingredients: "rye, lemon, simple syrup, mint",
	price: 60,
	drink_count: 12)
