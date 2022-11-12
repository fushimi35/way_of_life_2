class Board < ApplicationRecord
  belongs_to :user
  has_many :ideals
  has_many :concerns
  has_many :answers
end
