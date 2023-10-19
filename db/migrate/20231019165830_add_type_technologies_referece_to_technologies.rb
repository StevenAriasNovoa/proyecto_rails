class AddTypeTechnologiesRefereceToTechnologies < ActiveRecord::Migration[7.0]
  def change
    add_reference :technologies, :type_technologies, null: false, foreign_key: true
  end
end
