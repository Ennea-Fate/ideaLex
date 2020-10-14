class Author < ApplicationRecord
    has_many :books
    has_many :ethnoidioglosses
    has_many :notebooks
    
    validates :first_name, presence: true
    validates :second_name, presence: true
    validates :last_name, presence: true
    validates :description, presence: true

    include PgSearch::Model

    def name_with_initial
        "#{second_name} #{first_name.first}. #{last_name.first}."
    end
end
