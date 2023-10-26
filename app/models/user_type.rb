class UserType < ApplicationRecord

    has_many :user_user_types
    has_many :users, through: :user_user_types

end