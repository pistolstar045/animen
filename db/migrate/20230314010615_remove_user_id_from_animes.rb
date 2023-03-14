class RemoveUserIdFromAnimes < ActiveRecord::Migration[6.1]
  def change
    remove_column :animes, :User_id, :integer
  end
end
