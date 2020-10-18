class User < ApplicationRecord
  has_one :role
  has_many :notebooks
  has_secure_password
  before_save :default_role

  def name_with_initial
    "#{second_name} #{first_name.first.upcase}. #{last_name.first.upcase}."
  end

  def default_role
      self.role_id ||= Role.find_by(name: 'user').id
  end

end
