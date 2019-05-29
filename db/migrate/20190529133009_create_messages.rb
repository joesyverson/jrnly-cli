class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.string :body
      t.string :link
      t.boolean :post
      t.boolean :note
      t.boolean :to_do
      t.integer :user_id
      t.integer :tag_id
      t.timestamps
    end
  end
end
