class AddColumnsToHost < ActiveRecord::Migration[7.0]
  def change
    add_column :hosts, :age, :integer
    add_column :hosts, :address, :string
  end
end
