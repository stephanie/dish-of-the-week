class CuratedPost < Dish

  def upvote!
    self.up_vote += 1
    self.save
  end
  
  def downvote!
    self.down_vote += 1
    self.save
  end

end
