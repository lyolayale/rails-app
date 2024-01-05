class CreateCosts < ActiveRecord::Migration[7.0]
  def change
    create_table :costs do |t|
      t.string :title
      t.text :body
      t.integer :age
      t.string :fav_color

      t.timestamps
    end
  end
end
