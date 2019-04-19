class CreateCommentsComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_comments do |t|
      t.integer :post_id
      t.text :text

      t.timestamps
    end
  end
end
