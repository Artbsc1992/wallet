class CreateGroupOperations < ActiveRecord::Migration[7.0]
  def change
    create_join_table :groups, :operations do |t|
      # t.references :group, foreign_key: true
      # t.references :operation, foreign_key: true
      # t.timestamps
    end
  end
end
