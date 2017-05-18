class DropSearchesTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :searches
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
