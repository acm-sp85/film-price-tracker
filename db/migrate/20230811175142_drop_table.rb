class DropTable < ActiveRecord::Migration[7.0]
  def change
     drop_table :films
  end
end
