class AddStatusToLoans < ActiveRecord::Migration[6.0]
  def change
    add_column :loans, :status, :string
    add_column :loans, :loan_start, :date
    add_column :loans, :loan_end, :date
    add_column :loans, :gave_loan, :string
    add_column :loans, :received_loan, :string
  end
end
