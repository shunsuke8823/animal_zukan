class CreateAnimals < ActiveRecord::Migration[8.1]
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.string :reading, null: false
      t.references :category, null: false, foreign_key: true
      t.text :description, null: false
      t.string :emoji, null: false

      t.timestamps
    end
  end
end
