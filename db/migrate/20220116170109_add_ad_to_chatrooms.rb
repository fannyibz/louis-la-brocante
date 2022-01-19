class AddAdToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :ad, foreign_key: true
  end
end
