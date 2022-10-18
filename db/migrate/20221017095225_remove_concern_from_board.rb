class RemoveConcernFromBoard < ActiveRecord::Migration[6.1]
  def change
    remove_column :boards, :concern, :integer
  end
end
