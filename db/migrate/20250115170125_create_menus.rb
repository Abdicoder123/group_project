class CreateMenus < ActiveRecord::Migration[7.2]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :category
      t.boolean :active, default: true
      t.text :special_notes
      t.timestamps
    end
  end
end
