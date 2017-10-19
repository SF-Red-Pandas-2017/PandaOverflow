class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :comment_body
      t.integer :author_id
      t.references :commentable, polymorphic: true

      t.timestamps
    end
  end
end
