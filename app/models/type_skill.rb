class TypeSkill < ApplicationRecord

    has_many :skills, foreign_key: 'type_skills_id',dependent: :destroy 

    def name
        type_skill
    end

end
