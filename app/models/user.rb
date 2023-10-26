class User < ApplicationRecord
  belongs_to :social_link
  has_many :projects
  has_many :user_skills
  has_many :skills, through: :user_skills

  enum role: [:regular, :admin]
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
