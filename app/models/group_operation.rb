class GroupOperation < ApplicationRecord
  has_many :groups
  has_many :operations
end
