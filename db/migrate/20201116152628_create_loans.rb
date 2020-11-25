class CreateLoans < ActiveRecord::Migration[6.0]
  def change
    create_table :loans do |t|
      
      t.belongs_to :book, index: true
      t.belongs_to :user, index: true
      
      t.timestamps
    end
  end
end
