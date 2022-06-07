class CreateDevelopers < ActiveRecord::Migration[6.1]
  def change
    create_table :developers do |t|
      t.string :first_name
      t.string :last_name
      t.string :biography
      t.string :phone_number
      t.string :address
      t.string :website
      t.string :zoom
      t.string :github
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
