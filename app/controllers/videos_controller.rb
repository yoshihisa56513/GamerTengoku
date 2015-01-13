class VideosController < ApplicationController

  def show
    @video = Video.find(params[:id])
  end


  def new
    @video = Video.new
  end

   def create
      @game = Game.find(params[:game_id])
      @video = @game.videos.create(video_params)
      redirect_to game_path(@game.id)
  end
 
  private
 
      def video_params
          params[:video].permit(:title,:video_code,:exp)
      end
 
end
