class AddPhotoToCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :photo, :string
  end
end
