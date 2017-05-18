class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.text :address
      t.decimal :cost
      t.boolean :type
      t.integer :roomie
      t.integer :room
      t.boolean :pet
      t.boolean :parking
      t.boolean :service
      t.boolean :internet
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
