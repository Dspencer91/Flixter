class User < ActiveRecord::Base
    has_many :courses
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
end