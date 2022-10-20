class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def index2
    @boards = Board.all
  end

  def show
  end

  def detail
  end
end
