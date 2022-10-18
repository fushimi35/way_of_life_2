class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.integer :concern
      t.integer :ideal

      t.timestamps
    end
  end
end
