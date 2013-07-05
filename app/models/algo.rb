class Algo < ActiveRecord::Base
  attr_accessible :a, :b, :c, :d, :e, :f, :g, :h, :i, :name, :y_intercept

  has_many :values
  validates_presence_of :a, :b, :c, :d, :e, :f, :g, :h, :i, :name, :y_intercept
  validates_uniqueness_of :name
end
