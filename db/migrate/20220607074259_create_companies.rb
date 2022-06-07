class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :website
      t.string :zoom
      t.string :phone_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
