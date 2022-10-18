class Section < ApplicationRecord
  has_many :blocks, dependent: :destroy
  has_many :details, dependent: :destroy
end
