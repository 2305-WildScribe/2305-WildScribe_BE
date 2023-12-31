class User < ApplicationRecord
  has_many :adventures

  validates :email, uniqueness: true, presence: true
  validates :name, presence: true
  validates :password, presence: true


end
