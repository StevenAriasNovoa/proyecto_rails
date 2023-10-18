class AddUsersRefereceToUserUserTypes < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_user_types, :users, null: false, foreign_key: true
  end
end
