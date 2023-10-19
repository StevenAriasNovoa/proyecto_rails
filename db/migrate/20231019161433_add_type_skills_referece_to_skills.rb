class AddTypeSkillsRefereceToSkills < ActiveRecord::Migration[7.0]
  def change
    add_reference :skills, :type_skills, null: false, foreign_key: true
  end
end
