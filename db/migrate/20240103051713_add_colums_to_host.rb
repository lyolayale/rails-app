class AddColumsToHost < ActiveRecord::Migration[7.0]
  def change
    add_column :hosts, :street, :string
    add_column :hosts, :zipcode, :string
  end
end
