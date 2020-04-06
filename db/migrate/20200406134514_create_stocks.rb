class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.string :name
      t.string :price
      t.string :exchange
      t.belongs_to :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
