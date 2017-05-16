class AddTypeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :type, :boolean
  end
end
