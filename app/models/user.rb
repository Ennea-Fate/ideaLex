class User < ApplicationRecord
  has_one :role
  has_many :notebooks

  def name_with_initial
    "#{second_name} #{first_name.first}. #{last_name.first}."
end
end
