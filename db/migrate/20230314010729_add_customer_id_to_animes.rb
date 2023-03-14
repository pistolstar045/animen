class AddCustomerIdToAnimes < ActiveRecord::Migration[6.1]
  def change
    add_column :animes, :Customer_id, :integer
  end
end
