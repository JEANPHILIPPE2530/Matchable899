class AddSkillsToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :skills, :jsonb, array: true, default: []
  end
end
