class CreateAlgos < ActiveRecord::Migration
  def change
    create_table :algos do |t|
      t.string :name
      t.decimal :y_intercept, :precision => 8, :scale => 2
      t.integer :a
      t.integer :b
      t.integer :c
      t.integer :d
      t.integer :e
      t.integer :f
      t.integer :g
      t.integer :h
      t.decimal :i, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end

Price=80,224-5,228A-7159B-0C-1,453D+2293E+440F+0G+1,777H-.03053I
