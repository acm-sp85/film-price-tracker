class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :name
      t.string :image
      t.string :details
      t.float :price
      t.string :stock

      t.timestamps
    end
  end
end
