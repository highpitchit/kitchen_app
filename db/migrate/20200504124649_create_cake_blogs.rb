class CreateCakeBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :cake_blogs do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.string :body

      t.timestamps
    end
  end
end
