class Question < ApplicationRecord
  belongs_to :small_block, optional: true
  has_many :answers

  def user_answer(user)
    answers.find_by(user: user)
  end
end
