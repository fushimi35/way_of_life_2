class AddPrivacyToBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :boards, :privacy, :integer
  end
end
