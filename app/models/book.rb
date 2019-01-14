class Book < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :number, presence: true
end
