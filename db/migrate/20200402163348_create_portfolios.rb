class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :description
      t.text :stocks_array, array: true, default: []
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
