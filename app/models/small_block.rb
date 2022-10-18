class SmallBlock < ApplicationRecord
  belongs_to :block
  has_many :questions
end
