class CreateDemots < ActiveRecord::Migration
  def change
    create_table :demots do |t|
      t.string :tittle,        null: false 
      t.integer :votes_count,  default: 0
      t.boolean :active,       default: false
      t.integer :user_id,      null: false

      t.timestamps
    end

    add_index :demots, :user_id
  end
end
