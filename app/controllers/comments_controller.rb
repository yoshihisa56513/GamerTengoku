class CommentsController < ApplicationController

#  def index
 #   @game = Game.find(params[:game_id])
   # @comment = @game.comments.create(comment_params)
  #  redirect_to :back
#  end

  def create
    @game = Game.find(params[:game_id])
    @comment = @game.comments.create(comment_params)
    redirect_to game_path(@game.id)
  end
  
  private
  
  def comment_params
    
    params[:comment].permit(:title,:content)
  end


end
