class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string  :title
      t.string  :body
      t.string  :link
      # t.string  :img_url
      t.integer  :tag_id
      t.timestamps
    end
  end
end
