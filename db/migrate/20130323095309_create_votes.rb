class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id, :null => false
      t.integer :demot_id, :null => false		
      t.timestamps
    end
  end
end
