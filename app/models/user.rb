class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence:true
    attachment :profile_image
    has_many :posts
end
