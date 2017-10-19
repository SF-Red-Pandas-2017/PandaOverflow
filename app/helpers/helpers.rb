
def object_votes
  self.votes.reduce(0) {|sum, vote| sum + vote.vote_value}
end
