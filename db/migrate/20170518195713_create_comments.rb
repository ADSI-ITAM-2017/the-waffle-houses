class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user_id, foreign_key: true
      t.references :property_id, foreign_key: true
      t.text :message
      t.date :fecha

      t.timestamps
    end
  end
end
