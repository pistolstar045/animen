class RemoveCustomerIdFromAnimes < ActiveRecord::Migration[6.1]
  def change
    remove_column :animes, :Customer_id, :integer
  end
end
