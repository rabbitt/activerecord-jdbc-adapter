class ReservedWordMigration < ActiveRecord::Migration
  def self.up
    create_table "reserved_words", :force => true do |t|
      t.column :position, :integer
      t.column :select, :integer
    end
  end

  def self.down
    drop_table "reserved_words"
  end
end
CreateReservedWords = ReservedWordMigration

class ReservedWord < ActiveRecord::Base
end