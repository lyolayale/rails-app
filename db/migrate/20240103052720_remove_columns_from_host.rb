class RemoveColumnsFromHost < ActiveRecord::Migration[7.0]
  def change
    remove_column :hosts, :street, :string
    remove_column :hosts, :zipcode, :string
    remove_column :hosts, :address, :string
  end
end
