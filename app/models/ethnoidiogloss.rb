class Ethnoidiogloss < ApplicationRecord
  belongs_to :author
  belongs_to :user
  has_many :book_eigs
  has_many :books, through: :book_eigs
end
