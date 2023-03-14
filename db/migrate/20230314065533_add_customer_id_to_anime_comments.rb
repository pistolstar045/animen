class AddCustomerIdToAnimeComments < ActiveRecord::Migration[6.1]
  def change
    add_column :anime_comments, :customer_id, :integer
  end
end
