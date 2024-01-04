class RemoveColumnHost < ActiveRecord::Migration[7.0]
  def change
    remove_column :hosts, :pineapple, :string
  end
end
