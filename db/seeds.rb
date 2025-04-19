# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create providers
providers = [
  { name: "Lux Lighting Co." },
  { name: "Modern Illuminations" },
  { name: "Eco Light Solutions" }
]

providers.each do |provider_attrs|
  Provider.find_or_create_by!(name: provider_attrs[:name])
end

# Create categories
categories = [
  { name: "Colgantes", slug: "colgantes" },
  { name: "De pie", slug: "de-pie" },
  { name: "Exterior", slug: "exterior" }
]

categories.each do |category_attrs|
  Category.find_or_create_by!(slug: category_attrs[:slug]) do |category|
    category.assign_attributes(category_attrs)
  end
end

# Create tags
tags = [
  { name: "featured" },
  { name: "new" },
  { name: "sale" }
]

tags.each do |tag_attrs|
  Tag.find_or_create_by!(name: tag_attrs[:name])
end

# Create featured tag
featured_tag = Tag.find_or_create_by!(name: 'featured')

# Create a sample category
category = Category.find_or_create_by!(name: 'Lighting', slug: 'lighting')

# Create a sample provider
provider = Provider.find_or_create_by!(name: 'Lighting Co')

# Create some sample products
5.times do |i|
  product = Product.create!(
    name: "Product #{i + 1}",
    description: "Description for product #{i + 1}",
    price: 99.99,
    category: category,
    provider: provider,
    active: true
  )
  
  # Make some products featured
  if i < 2
    ProductTag.create!(product: product, tag: featured_tag)
  end
end
