class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nickname
      t.integer :last_education
      t.integer :major

      t.timestamps
    end
  end
end
