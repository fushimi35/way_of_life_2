class AddColumns1ToBoard < ActiveRecord::Migration[6.1]
  def change
    add_reference :boards, :ideal, null: true, foreign_key: true
    add_reference :boards, :concern, null: true, foreign_key: true
  end
end
