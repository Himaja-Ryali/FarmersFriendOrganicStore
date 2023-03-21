class CreateOrganicStores < ActiveRecord::Migration[6.1]
  def change
    create_table :organic_stores do |t|
      t.integer :ITEMNO
      t.string :ITEM
      t.integer :QTY
      t.integer :PRICE
      t.date :DDATE

      t.timestamps
    end
  end
end
