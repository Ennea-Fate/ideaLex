class ConcordanceBook < ApplicationRecord
  belongs_to :concordance
  belongs_to :book
end
