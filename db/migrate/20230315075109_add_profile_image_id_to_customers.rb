class AddProfileImageIdToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :profile_image_id, :integer
  end
end
