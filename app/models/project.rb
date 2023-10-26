class Project < ApplicationRecord

    belongs_to :user
    has_many :project_technologies
    has_many :techonolgies, through: :project_technologies

end