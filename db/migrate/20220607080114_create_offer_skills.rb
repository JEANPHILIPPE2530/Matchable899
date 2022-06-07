class CreateOfferSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :offer_skills do |t|
      t.references :skill, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
