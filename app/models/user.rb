class User < ApplicationRecord
  has_many :boards, dependent: :destroy
  enum last_education: { humanities:0, science:1, other:2 }
end
