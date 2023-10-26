class AddSocialLinkToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :social_links, foreign_key: true
  end
end
