class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :photo
      t.text :embed
      t.integer :board_id

      t.timestamps
    end
  end
end
