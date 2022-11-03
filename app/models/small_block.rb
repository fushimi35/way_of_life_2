class SmallBlock < ApplicationRecord
  belongs_to :block
  has_many :questions

  def answers?(user)
    answers = questions.select { |q| q.answers.find_by(user: user)&.content.present? }
    !answers.empty?
  end
end
