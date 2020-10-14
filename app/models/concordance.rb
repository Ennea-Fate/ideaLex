class Concordance < ApplicationRecord
    has_many :concordance_books, dependent: :destroy
    has_many :books, through: :concordance_books, dependent: :destroy

    private
       
end
