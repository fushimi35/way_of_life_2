class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :detail
  belongs_to :board
end
