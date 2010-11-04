class ActsAsLikableMigration < ActiveRecord::Migration
  def self.up
    create_table :likes, :force => true do |t|
      t.references :liker, :null => false
      t.references :likable, :polymorphic => true, :null => false
      t.timestamps
    end

    add_index :likes, [:likable_type, :likable_id]
    add_index :likes, :liker_id
  end

  def self.down
    drop_table :likes
  end
end
