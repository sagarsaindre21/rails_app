class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.belongs_to :user # Creates 'user_id' column
    	t.string :title
      t.string :description
      t.string :slug
      t.text :content
      t.boolean :published, default: false
      t.datetime :published_at
      t.timestamps
    end
  end
end
