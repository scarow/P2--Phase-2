class Skill < ActiveRecord::Base
  has_many :users, through: :ratings
  has_many :ratings
end
