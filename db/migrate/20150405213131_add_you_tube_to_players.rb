class AddYouTubeToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :video_url, :string
  end
end
