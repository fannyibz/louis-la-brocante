class AddUserToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :user, foreign_key: true
  end
end
