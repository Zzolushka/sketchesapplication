class AddUserIdToSketches < ActiveRecord::Migration[5.2]
  def change
    add_column :sketches, :user_id, :integer
  end
end
