class Question < ApplicationRecord
  belongs_to :small_block, optional: true
end
