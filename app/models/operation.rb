class Operation < ApplicationRecord
  belongs_to :user
  has_many :group, through: :group_operations
end
