class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :supplier_name
      t.string :rut
      t.integer :number_invoice
      t.integer :purcharse_of_order
      t.date :date
      t.time :chechk_in
      t.integer :quantity_of_code
      t.integer :net_price

      t.timestamps
    end
  end
end
