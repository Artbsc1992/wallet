class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :operations

  validates :name, presence: true
  validates :icon, presence: true

  def total_amount
    operations.sum(:amount)
  end
end
