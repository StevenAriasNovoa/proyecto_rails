class AddTechnologiesRefereceToProjectTechnologies < ActiveRecord::Migration[7.0]
  def change
    add_reference :project_technologies, :technologies, null: false, foreign_key: true
  end
end
