class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.references :detail, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
