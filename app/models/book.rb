class Book < ApplicationRecord
  validates :firstname, presence: true, length:  {minimum: 2}, format: { with:  /\A[a-zA-Z]+\z/, message: " has incorrect symbol"}
  validates :lastname, presence: true, length:  {minimum: 2}, format: { with:  /\A[a-zA-Z]+\z/, message: " has incorrect symbol"}
  validates :number, format: { with: /\+7\d{10}/ },
    presence: true
end
