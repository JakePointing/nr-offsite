class AddIndividualToAchievement < ActiveRecord::Migration[6.1]
  def change
    add_reference :achievements, :individual, foreign_key: true
  end
end
