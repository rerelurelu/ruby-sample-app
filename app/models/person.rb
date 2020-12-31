class Person < ApplicationRecord
  validates :name, presence: true, format: {with: /\A[a-zA-Z]+\z/}
  validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :mail, email: true
end
