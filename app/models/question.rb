class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :answers
  belongs_to :user, foreign_key: :author_id
  has_many :comments, :as => :commentable
  has_many :votes, :as => :voteable
end
