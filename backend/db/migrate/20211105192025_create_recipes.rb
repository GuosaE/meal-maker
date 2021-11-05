class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :image
      t.string :instructions
      t.string :ingredients
      t.references :cuisine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
