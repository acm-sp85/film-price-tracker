class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :name
      t.string :imageUrl
      t.integer :price
      t.string :stockStatus

      t.timestamps
    end
  end
end
