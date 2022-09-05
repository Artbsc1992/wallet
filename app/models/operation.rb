class Operation < ApplicationRecord
  belongs_to :user
  has_many :group, through: :group_operations

  validates :name, presence: true
  validates :amount, presence: true
end
