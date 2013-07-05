class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :name
      t.integer :model_year
      t.string :m
      t.string :m2
      t.decimal :a, :precision => 16, :scale => 8
      t.boolean :b
      t.boolean :c
      t.boolean :d
      t.boolean :e
      t.boolean :f
      t.boolean :g
      t.boolean :h
      t.decimal :i, :precision => 16, :scale => 8

      t.timestamps
    end
  end
end
