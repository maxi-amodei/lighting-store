# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create categories
categories = [
  { name: "Ceiling Lights", slug: "ceiling-lights" },
  { name: "Wall Lights", slug: "wall-lights" },
  { name: "Table Lamps", slug: "table-lamps" },
  { name: "Floor Lamps", slug: "floor-lamps" },
  { name: "Outdoor Lighting", slug: "outdoor-lighting" }
]

categories.each do |category_attrs|
  Category.find_or_create_by!(category_attrs)
end

# Create sample products
products = [
  {
    name: "Modern LED Ceiling Light",
    slug: "modern-led-ceiling-light",
    price: 129.99,
    description: "Contemporary LED ceiling light with dimmable functionality",
    image_url: "https://example.com/led-ceiling.jpg",
    active: true,
    category: Category.find_by(name: "Ceiling Lights")
  },
  {
    name: "Vintage Wall Sconce",
    slug: "vintage-wall-sconce",
    price: 89.99,
    description: "Classic wall sconce with brass finish",
    image_url: "https://example.com/wall-sconce.jpg",
    active: true,
    category: Category.find_by(name: "Wall Lights")
  },
  {
    name: "Minimalist Table Lamp",
    slug: "minimalist-table-lamp",
    price: 59.99,
    description: "Sleek and modern table lamp with touch control",
    image_url: "https://example.com/table-lamp.jpg",
    active: true,
    category: Category.find_by(name: "Table Lamps")
  }
]

products.each do |product_attrs|
  Product.find_or_create_by!(slug: product_attrs[:slug]) do |product|
    product.assign_attributes(product_attrs)
  end
end
