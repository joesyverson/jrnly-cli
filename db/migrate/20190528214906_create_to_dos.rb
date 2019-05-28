class CreateToDos < ActiveRecord::Migration[5.0]
  def change
    create_table :to_dos do |t|
      t.string  :title
      t.string  :description
      t.string  :link
      # t.string  :img_url
      t.integer  :tag_id
      t.timestamps
    end
  end
end
