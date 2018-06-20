class CreateCryptos < ActiveRecord::Migration
  def change
    create_table :cryptos do |t|
      t.string :symbol
      t.string :index
      t.integer :user_id
      t.decimal :amount_owned
      t.decimal :cost_per

      t.timestamps null: false
    end
    add_index :cryptos, :user_id
  end
end
