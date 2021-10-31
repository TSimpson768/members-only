class RenameUserId < ActiveRecord::Migration[6.1]
  def change
    change_table :posts do |t|
      t.rename :author, :user_id
    end
    add_foreign_key :posts, :users, column: :user_id, primary_key: :id
  end
end
