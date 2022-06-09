class AddPhotoToDeveloper < ActiveRecord::Migration[6.1]
  def change
    add_column :developers, :photo, :string
  end
end
