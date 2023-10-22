# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Adventure.delete_all
User.delete_all

total_users = 2000
i = 0
puts "Creating #{total_users} users..."
user_data = []
index = 0
2000.times do
    name = Faker::Name.name
    email = "me+#{index}@gmail.com"
    password = "password+#{index}"

    puts "Name: #{name}, Email: #{email}, Password: #{password}"
    
    user_data.push({
        name: name,
        email: email,
        password: password
    })
    index += 1
    puts "User #{i += 1}/#{total_users} created"
end
User.insert_all(user_data)
puts "Finished creating users."
users = User.all

users[500..999].each do |user|
    adventures = []
    1.times do
        adventures.push({
            user_id: user.id,  # Assuming there's a user_id in the Adventure model
            activity: Faker::Lorem.word,
            date: "10/11/2023",
            image_url: "https://www.rei.com/dam/parrish_091412_0679_main_lg.jpg",
            stress_level: "Very High",
            hours_slept: 8,
            sleep_stress_notes: "notes about sleep and stress",
            hydration: "Hydrated",
            diet: "Good Diet",
            diet_hydration_notes: "Some Hydration",
            beta_notes: "Running is real hard"
        })
    end
    puts "Adventures create for #{user.id}."
    Adventure.insert_all(adventures)
end
puts "500 Users with 1 adv seeded"

users[1000..1200].each do |user|
    adventures = []
    10.times do
        adventures.push({
            user_id: user.id,  # Assuming there's a user_id in the Adventure model
            activity: Faker::Lorem.word,
            date: "10/11/2023",
            image_url: "https://www.rei.com/dam/parrish_091412_0679_main_lg.jpg",
            stress_level: "Very High",
            hours_slept: 8,
            sleep_stress_notes: "notes about sleep and stress",
            hydration: "Hydrated",
            diet: "Good Diet",
            diet_hydration_notes: "Some Hydration",
            beta_notes: "Running is real hard"
        })
    end
    puts "Adventures created for #{user.id}."
    Adventure.insert_all(adventures)
end
puts "200 Users with 10 adv seeded"

users[1201..1400].each do |user|
    adventures = []
    25.times do
        adventures.push({
            user_id: user.id,  # Assuming there's a user_id in the Adventure model
            activity: Faker::Lorem.word,
            date: "10/11/2023",
            image_url: "https://www.rei.com/dam/parrish_091412_0679_main_lg.jpg",
            stress_level: "Very High",
            hours_slept: 8,
            sleep_stress_notes: "notes about sleep and stress",
            hydration: "Hydrated",
            diet: "Good Diet",
            diet_hydration_notes: "Some Hydration",
            beta_notes: "Running is real hard"
        })
    end
    puts "Adventures created for #{user.id}."
    Adventure.insert_all(adventures)
end
puts "200 Users with 25 adv seeded"

users[1401..1600].each do |user|
    adventures = []
    50.times do
        adventures.push({
            user_id: user.id,  # Assuming there's a user_id in the Adventure model
            activity: Faker::Lorem.word,
            date: "10/11/2023",
            image_url: "https://www.rei.com/dam/parrish_091412_0679_main_lg.jpg",
            stress_level: "Very High",
            hours_slept: 8,
            sleep_stress_notes: "notes about sleep and stress",
            hydration: "Hydrated",
            diet: "Good Diet",
            diet_hydration_notes: "Some Hydration",
            beta_notes: "Running is real hard"
        })
    end
    puts "Adventures created for #{user.id}."
    Adventure.insert_all(adventures)
end
puts "200 Users with 50 adv seeded"

users[1601..1800].each do |user|
    adventures = []
    100.times do
        adventures.push({
            user_id: user.id,  # Assuming there's a user_id in the Adventure model
            activity: Faker::Lorem.word,
            date: "10/11/2023",
            image_url: "https://www.rei.com/dam/parrish_091412_0679_main_lg.jpg",
            stress_level: "Very High",
            hours_slept: 8,
            sleep_stress_notes: "notes about sleep and stress",
            hydration: "Hydrated",
            diet: "Good Diet",
            diet_hydration_notes: "Some Hydration",
            beta_notes: "Running is real hard"
        })
    end
    puts "Adventures create for #{user.id}."
    Adventure.insert_all(adventures)
end
puts "200 Users with 100 adv seeded"
users[1801..1999].each do |user|
    adventures = []
    1000.times do
        adventures.push({
            user_id: user.id,  # Assuming there's a user_id in the Adventure model
            activity: Faker::Lorem.word,
            date: "10/11/2023",
            image_url: "https://www.rei.com/dam/parrish_091412_0679_main_lg.jpg",
            stress_level: "Very High",
            hours_slept: 8,
            sleep_stress_notes: "notes about sleep and stress",
            hydration: "Hydrated",
            diet: "Good Diet",
            diet_hydration_notes: "Some Hydration",
            beta_notes: "Running is real hard"
        })
    end
    puts "Adventures create for #{user.id}."
    Adventure.insert_all(adventures)
end
puts "200 Users with 1000 adv seeded"