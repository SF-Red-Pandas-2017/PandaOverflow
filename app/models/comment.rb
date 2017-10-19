class Comment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user, foreign_key: :author_id
  belongs_to :commentable, :polymorphic => true
  has_many :votes, :as => :voteable

  include VoteCountable

end
