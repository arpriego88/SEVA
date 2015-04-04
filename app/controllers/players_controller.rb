class PlayersController < ApplicationController
  before_action :authenticate_user!
  def index
    filter = []
    filter << "seva_score >= #{params[:seva_score]}" if params[:seva_score].present? 
    filter << "ppg >= #{params[:ppg]}" if params[:ppg].present?
    filter << "apg >= #{params[:apg]}" if params[:apg].present?
    filter << "rpg >= #{params[:rpg]}" if params[:rpg].present?
    filter << "spg >= #{params[:spg]}" if params[:spg].present?
    filter << "bpg >= #{params[:bpg]}" if params[:bpg].present?
    filter << "fg >= #{params[:fg]}" if params[:fgg].present?
    filter << "win >= #{params[:win]}" if params[:win].present? 
    filter << "height >= #{params[:height]}" if params[:height].present? 
    filter << "style = '#{params[:style]}'"  if params[:style].present?
    filter << "stat_year = #{params[:stat_year]}"  if params[:stat_year].present?
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
  end
end