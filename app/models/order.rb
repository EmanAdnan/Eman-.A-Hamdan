class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :user, :product,:total , presence: true

end