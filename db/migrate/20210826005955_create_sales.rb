class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :price
      t.string :origin
      t.string :blend_coffe

      t.timestamps
    end
  end
end
