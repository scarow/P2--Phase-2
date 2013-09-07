class Skill < ActiveRecord::Base
  has_many :users, through: :ratings
  has_many :ratings

  validates_uniqueness_of :name

def user_with_proficiency(level)
  self.ratings.find_by_proficiency_rating(level).user
end

end
