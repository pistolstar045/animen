class RemoveUserIdFromAnimeComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :anime_comments, :user_id, :integer
  end
end
