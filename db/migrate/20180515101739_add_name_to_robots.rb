class AddNameToRobots < ActiveRecord::Migration[5.2]
  def change
    add_column :robots, :name, :string
  end
end
