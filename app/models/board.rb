class Board < ApplicationRecord
  belongs_to :user
  has_many :ideal
  has_many :concern
end
