class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :question_body
      t.integer :author_id

      t.timestamps
    end
  end
end
