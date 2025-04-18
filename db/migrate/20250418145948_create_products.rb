class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :slug
      t.decimal :price
      t.text :description
      t.string :image_url
      t.boolean :active
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
