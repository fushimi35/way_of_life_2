class Block < ApplicationRecord
  belongs_to :section
  has_many :small_blocks
end
