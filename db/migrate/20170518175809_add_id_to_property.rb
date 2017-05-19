class AddIdToProperty < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :id, :integer
  end
end
