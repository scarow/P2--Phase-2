class User < ActiveRecord::Base
  has_many :ratings
  has_many :skills, through: :ratings

  validates_uniqueness_of :name


  # DONT KNOW HOW TO DO THE BELOW:
  def proficiency_for(inputted_skill)
      Ranking.create(proficiency_rating: 0)

  end

  def set_proficiency_for(inputted_skill, level)
    
    
  end
end

