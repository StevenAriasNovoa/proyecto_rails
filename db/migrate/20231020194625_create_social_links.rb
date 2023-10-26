class CreateSocialLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :social_links do |t|
      t.string :name_link
      t.string :url

      t.timestamps
    end
  end
end
