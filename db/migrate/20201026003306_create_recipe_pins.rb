class CreateRecipePins < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_pins do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :recipe_link

      t.timestamps
    end
  end
end
