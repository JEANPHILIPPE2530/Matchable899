class DeleteOfferSkillTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :offer_skills
  end
end
