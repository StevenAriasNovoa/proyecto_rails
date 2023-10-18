class AddUserUserTypesRefereceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :user_types, null: false, foreign_key: true
  end
end
