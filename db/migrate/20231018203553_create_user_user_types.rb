class CreateUserUserTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_user_types do |t|

      t.timestamps
    end
  end
end
