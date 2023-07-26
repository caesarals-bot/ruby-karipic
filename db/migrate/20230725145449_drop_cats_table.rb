class DropCatsTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :cats
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
