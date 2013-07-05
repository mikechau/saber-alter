class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.integer :truck_id
      t.datetime :ts
      t.decimal :estimate, :precision => 16, :scale => 8
      t.decimal :actual, :precision => 16, :scale => 8

      t.timestamps
    end
  end
end
