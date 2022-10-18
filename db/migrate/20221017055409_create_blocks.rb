class CreateBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :blocks do |t|
      t.references :section, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
