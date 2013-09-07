class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :proficiency_rating, { default: 0 }
      t.belongs_to :user
      t.belongs_to :skill
    end
  end
end
