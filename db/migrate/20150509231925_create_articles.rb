class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :body
      t.timestamps
    end
  end
  def up
    change_column :articles, :body, :text, :null => false
	end
end
