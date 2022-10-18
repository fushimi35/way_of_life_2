class Concern < ApplicationRecord
  belongs_to :board, optional: true
end
