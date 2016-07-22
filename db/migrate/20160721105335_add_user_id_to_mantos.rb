class AddUserIdToMantos < ActiveRecord::Migration
  def change
    add_column :mantos, :user_id, :integer
  end
end
