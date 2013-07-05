class Value < ActiveRecord::Base
  attr_accessible :actual, :estimate, :truck_id, :ts

  belongs_to :truck
end
