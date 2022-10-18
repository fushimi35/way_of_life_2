class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.references :smallblock, null: true, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
