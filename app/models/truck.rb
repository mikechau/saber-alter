class Truck < ActiveRecord::Base
  attr_accessible :a, :b, :c, :d, :e, :f, :g, :h, :i, :m, :m2, :model_year, :name

  has_many :values

  validates_presence_of :model_year, :i, :name
  validates_uniqueness_of :name

  def calculate(algo_id)
    algo = Algo.find(algo_id)
    (algo.y_intercept) - (algo.a * a) - (algo.b * dummy(b)) - (algo.c * dummy(c)) - (algo.d * dummy(d)) + (algo.e * dummy(e)) + (algo.f * dummy(f)) + (algo.g * dummy(g)) + (algo.h * dummy(h)) - (algo.i * i)
  end

  def dummy(var)
    var ? 1 : 0
  end
end