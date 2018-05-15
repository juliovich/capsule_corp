class CreateRobots < ActiveRecord::Migration[5.2]
  def change
    create_table :robots do |t|
      t.string :functions
      t.string :caracteristics
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
