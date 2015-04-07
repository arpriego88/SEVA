class PlayersController < ApplicationController
  before_action :authenticate_user!
  def index
    filter = []
    filter << "seva_score_c >= #{params[:seva_score_c]}" if params[:seva_score_c].present? 
    filter << "ppgc >= #{params[:ppgc]}" if params[:ppgc].present?
    filter << "apgc >= #{params[:apgc]}" if params[:apgc].present?
    filter << "rpgc >= #{params[:rpgc]}" if params[:rpgc].present?
    filter << "spgc >= #{params[:spgc]}" if params[:spgc].present?
    filter << "bpgc >= #{params[:bpgc]}" if params[:bpgc].present?
    filter << "fgpc >= #{params[:fgpc]}" if params[:fgpc].present?
    filter << "win >= #{params[:win]}" if params[:win].present? 
    filter << "height >= #{params[:height]}" if params[:height].present? 
    filter << "style = '#{params[:style]}'"  if params[:style].present?
    filter << "hsclass = '#{params[:hsclass]}'"  if params[:hsclass].present?
    filter << "st = '#{params[:st]}'"  if params[:st].present?
  
    if filter.empty?
      @players = Player.all.paginate(:page => params[:page], :per_page => 25)
    else
      # @players = Player.where("seva_score >= ? AND ppg >= ? AND win > ? AND hsclass = ?", params[:seva_score], params[:ppg], params[:win], params[:hsclass]).paginate(:page => params[:page], :per_page => 25)
      @players = Player.where(filter.join(' AND ')).paginate(:page => params[:page], :per_page => 25)
    end

      @h = Player.all
  end

  def show
    @player = Player.find(params[:id])
    @top10 = Player.first(10)
    @top100 = Player.first(100)
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to @player
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def player_params
    params.require(:player).permit(:name, :espn, :scout, :rivals, :committed_to, :st, :stat_year, :hsclass,
    :height, :seva_score, :win, :ppg, :apg, :rpg, :bpg, :spg, :fg, :high_school, :risk_score, :position,
    :style, :past_similar_one, :past_similar_two, :past_similar_three, :current_similar_one, :current_similar_two,
    :current_similar_three, :barwin, :barppg, :barfg, :barapg, :barrpg, :barbpg, :barspg, :created_at,
    :updated_at, :seva_score_c, :ppgc, :apgc, :rpgc, :bpgc, :spgc, :fgpc, :seva_score_f, :ppgf, :apgf,
    :rpgf, :bpgf, :spgf, :fgpf, :seva_score_s, :ppgs, :apgs, :rpgs, :bpgs, :spgs, :fgps, :seva_score_j,
    :ppgj, :apgj, :rpgj, :bpgj, :spgj, :fgpj, :seva_score_sr, :ppgsr, :apgsr, :rpgsr, :bpgsr, :spgsr,
    :fgpsr, :video_url)
  end
end