class Operation < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :groups

  validates :name, presence: true
  validates :amount, presence: true
  validates :user_id, presence: true
end
