class Value < ActiveRecord::Base
  attr_accessible :actual, :algo_id, :estimate, :truck_id, :ts

  belongs_to :truck
  belongs_to :algo
end
