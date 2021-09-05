class ChangeCustomaersToCustomers < ActiveRecord::Migration[5.0]
  def change
    rename_table :customaers, :customers
  end
end
