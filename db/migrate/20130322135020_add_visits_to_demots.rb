class AddVisitsToDemots < ActiveRecord::Migration
  def change
  	add_column :demots, :visits, :integer, default: 0, null: false
  end
end
