class CreateSmallBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :small_blocks do |t|
      t.references :block, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
