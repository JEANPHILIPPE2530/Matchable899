class AddDeveloperAndCompanyToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :company, foreign_key: true
    add_reference :chatrooms, :developer, foreign_key: true
  end
end
