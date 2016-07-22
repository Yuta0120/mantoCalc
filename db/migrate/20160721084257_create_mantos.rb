class CreateMantos < ActiveRecord::Migration
  def change
    create_table :mantos do |t|
      t.integer :mantos, default: 0
      t.integer :eart_money, default: 0

      t.timestamps null: true
    end
  end
end
