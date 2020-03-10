class Taxi < ApplicationRecord
  has_many :comments, as: :commentable
end
