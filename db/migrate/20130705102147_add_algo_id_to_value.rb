class AddAlgoIdToValue < ActiveRecord::Migration
  def change
    add_column :values, :algo_id, :integer
  end
end
