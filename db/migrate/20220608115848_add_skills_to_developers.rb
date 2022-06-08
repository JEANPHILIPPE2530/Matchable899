class AddSkillsToDevelopers < ActiveRecord::Migration[6.1]
  def change
    add_column :developers, :skills, :jsonb, array: true, default: []
  end
end
