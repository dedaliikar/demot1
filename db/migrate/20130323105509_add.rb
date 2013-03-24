class Add < ActiveRecord::Migration
  def up
  	add_column :demots, :votes_count, :integer, :default => 0

  end

  def down
  end
end
