class Question < ApplicationRecord
  belongs_to :smallblock, optional: true
end
