class AddAnimeIdToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :anime_id, :integer
  end
end
