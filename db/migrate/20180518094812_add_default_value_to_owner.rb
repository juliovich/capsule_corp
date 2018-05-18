class AddDefaultValueToOwner < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :owner, :boolean, default: false, null: false
  end
end
