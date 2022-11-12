class AddBoardIdToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_reference :answers, :board, foreign_key: true
  end
end
