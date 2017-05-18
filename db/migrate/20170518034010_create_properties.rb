class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.decimal :cost
      t.string :delegacion
      t.string :colonia
      t.string :street
      t.integer :interior
      t.integer :exterior
      t.integer :zipcode
      t.string :tipo
      t.integer :roomie
      t.integer :room
      t.string :pet
      t.string :parking
      t.string :service
      t.string :internet
      t.text :description

      t.timestamps
    end
  end
end
