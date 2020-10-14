class Concordance < ApplicationRecord
    has_many :concordance_books
    has_many :books, through: :concordance_books
end
