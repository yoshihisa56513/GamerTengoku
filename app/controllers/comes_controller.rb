class ComesController < ApplicationController
  before_action :set_come, only: [:show, :edit, :update, :destroy]

  # GET /comes
  # GET /comes.json
  def index
    @comes = Come.all
  end

  # GET /comes/1
  # GET /comes/1.json
  def show
  end

  # GET /comes/new
  def new
    @come = Come.new
  end

  # GET /comes/1/edit
  def edit
  end

  # POST /comes
  # POST /comes.json
  def create
    @game = Game.find(params[:game_id])
    @come = @game.comes.create(come_params)
    redirect_to :back
=begin
    respond_to do |format|
      if @come.save
        format.html { redirect_to @come, notice: 'Come was successfully created.' }
        format.json { render :show, status: :created, location: @come }
      else
        format.html { render :new }
        format.json { render json: @come.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /comes/1
  # PATCH/PUT /comes/1.json
  def update
    respond_to do |format|
      if @come.update(come_params)
        format.html { redirect_to @come, notice: 'Come was successfully updated.' }
        format.json { render :show, status: :ok, location: @come }
      else
        format.html { render :edit }
        format.json { render json: @come.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comes/1
  # DELETE /comes/1.json
  def destroy
    @come.destroy
    respond_to do |format|
      format.html { redirect_to comes_url, notice: 'Come was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_come
      @come = Come.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def come_params
      params.require(:come).permit(:content, :game_id)
    end
end
