class RemoveIdealFromBoard < ActiveRecord::Migration[6.1]
  def change
    remove_column :boards, :ideal, :integer
  end
end
