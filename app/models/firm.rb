class Firm < ApplicationRecord
  has_many :comments, as: :commentable
end
