class AddGeneroToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :genero, :string
  end
end
