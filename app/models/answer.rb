class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  belongs_to :user, foreign_key: :author_id
  has_many :comments, :as => :commentable
  has_many :votes, :as => :voteable

  include VoteCountable
end
