class GamesController < ApplicationController

  def index
    @games = Game.all
  end
  
  def show
    @game = Game.find(params[:id])
  end 
  
  def new 
    @game = Game.new
  end
  
  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to games_path
  end
  
  private
  
  def game_params
    params[:game].permit(:gname,:exp,:gcate)
    
  end


end
