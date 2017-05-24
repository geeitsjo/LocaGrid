class Reaction < ApplicationRecord
  SENTIMENTS = %w(
  	Like
  	Love
  	Sad
  	Confuse
  	Angry
  )
  
  belongs_to :idea
end
