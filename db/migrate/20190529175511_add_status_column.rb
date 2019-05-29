class AddStatusColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :status, :string
    remove_column :messages, :post
    remove_column :messages, :to_do
    remove_column :messages, :note
  end
end
