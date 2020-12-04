class AddEditorialToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :editorial, :string
  end
end
