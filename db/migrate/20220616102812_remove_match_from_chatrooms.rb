class RemoveMatchFromChatrooms < ActiveRecord::Migration[6.1]
  def change
    remove_reference :chatrooms, :match, foreign_key: true
  end
end
