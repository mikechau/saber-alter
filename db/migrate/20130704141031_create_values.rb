class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.integer :truck_id
      t.datetime :ts
      t.decimal :estimate, :precision => 8, :scale => 2
      t.decimal :actual, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
