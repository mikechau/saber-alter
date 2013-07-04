class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :name
      t.integer :model_year
      t.string :m
      t.string :m2
      t.decimal :a, :precision => 8, :scale => 2
      t.boolean :b
      t.boolean :c
      t.boolean :d
      t.boolean :e
      t.boolean :f
      t.boolean :g
      t.boolean :h
      t.decimal :i, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
