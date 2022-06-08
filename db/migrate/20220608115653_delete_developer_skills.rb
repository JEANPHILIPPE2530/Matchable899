class DeleteDeveloperSkills < ActiveRecord::Migration[6.1]
  def change
    drop_table :developer_skills
  end
end
