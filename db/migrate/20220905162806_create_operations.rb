class CreateOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :operations do |t|
      t.belongs_to :user, foreign_key: true
      
      t.string :name
      t.numeric :amount
      t.timestamps
    end
  end
end
