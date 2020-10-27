# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lasagna = RecipePin.create(
            title: "Lasagna",
            description: "Cheesy and good",
            category: "pasta",
            recipe_link: "lasagna.com"
        )

        lasagna.image.attach(io: File.open("app/assets/Lasagna-FEATURE.jpg"), filename: "lasagna.png")