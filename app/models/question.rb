class Question < ApplicationRecord
  has_many :answer
  validates :content, :name, presence: true
end
