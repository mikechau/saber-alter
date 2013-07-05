class CreateAlgos < ActiveRecord::Migration
  def change
    create_table :algos do |t|
      t.string :name
      t.decimal :y_intercept, :precision => 16, :scale => 8
      t.integer :a
      t.integer :b
      t.integer :c
      t.integer :d
      t.integer :e
      t.integer :f
      t.integer :g
      t.integer :h
      t.decimal :i, :precision => 16, :scale => 8

      t.timestamps
    end
  end
end