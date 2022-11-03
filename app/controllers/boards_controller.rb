class BoardsController < ApplicationController
  before_action :set_board, only: [:show]
  def index
    @boards = Board.all
  end

  def index2
    @boards = Board.all
  end

  def show
    @sections = Section.all
    # @details = Detail.all
  end

  def detail
  end

  def set_board
    @board = Board.find_by(id: params[:id])
  end
end
