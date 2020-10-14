class Book < ApplicationRecord
  belongs_to :author
  has_many :book_eigs, dependent: :destroy
  has_many :ethnoidioglosses, through: :book_eigs
  has_many :concordance_books, dependent: :destroy
  has_many :concordances, through: :concordance_books, dependent: :destroy
  has_one :frequency_vocabulary 

  validates :name, presence: true
  validates :text, presence: true

  attr_accessor :book_file
  include PgSearch::Model

end
