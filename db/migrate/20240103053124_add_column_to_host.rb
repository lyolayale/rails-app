class AddColumnToHost < ActiveRecord::Migration[7.0]
  def change
    add_column :hosts, :street, :string
    add_column :hosts, :pineapple, :string
  end
end
