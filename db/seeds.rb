# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Category.create(name: "School", icon: "bi bi-book")
Category.create(name: "Work", icon: "bi bi-briefcase")
Category.create(name: "Health", icon: "bi bi-heart-pulse")
Category.create(name: "Finance", icon: "bi bi-currency-dollar")
Category.create(name: "Home", icon: "bi bi-house-door")
Category.create(name: "Shopping", icon: "bi bi-cart")
Category.create(name: "Travel", icon: "bi bi-geo-alt")
Category.create(name: "Fitness", icon: "bi bi-bicycle")
Category.create(name: "Reading", icon: "bi bi-journal-bookmark")
Category.create(name: "Entertainment", icon: "bi bi-controller")
Category.create(name: "Personal", icon: "bi bi-person")
Category.create(name: "Learning", icon: "bi bi-mortarboard")
Category.create(name: "Errands", icon: "bi bi-list-check")
