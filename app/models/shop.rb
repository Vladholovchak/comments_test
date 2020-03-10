class Shop < ApplicationRecord
  has_many :comments, as: :commentable
end
