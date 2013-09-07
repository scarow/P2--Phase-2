class User < ActiveRecord::Base
  has_many :ratings
  has_many :skills, through: :ratings

  validates_uniqueness_of :name


  # DONT KNOW HOW TO DO THE BELOW:
  def proficiency_for(inputted_skill)
      var = self.skills.find(inputted_skill).id
      Rating.find_by_skill_id(var).proficiency_rating
  end

  def set_proficiency_for(inputted_skill, level)
    var = self.ratings.find_by_skill_id(inputted_skill.id)
    var.proficiency_rating = level
    var.save
          
  end
end

