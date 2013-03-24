class Vote < ActiveRecord::Base
  attr_accessible :user_id, :demot_id
    belongs_to :voter, :class_name => "User",
      :foreign_key => "user_id"
    belongs_to :demot, :counter_cache => true
end
