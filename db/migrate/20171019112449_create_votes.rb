class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :vote_value
      t.integer :judge_id
      t.references :voteable, polymorphic: true

      t.timestamps
    end
  end
end
