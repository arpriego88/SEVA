class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :espn
      t.integer :scout
      t.integer :rivals
      t.string :committed_to
      t.string :st
      t.integer :stat_year
      t.string :hsclass
      t.integer :height
      t.float :seva_score
      t.integer :win
      t.float :ppg
      t.float :apg
      t.float :rpg
      t.float :bpg
      t.float :spg
      t.integer :fg
      t.string :high_school
      t.string :risk_score
      t.float :position
      t.string :style
      t.string :past_similar_one
      t.string :past_similar_two
      t.string :past_similar_three
      t.string :current_similar_one
      t.string :current_similar_two
      t.string :current_similar_three
      t.float :barwin
      t.float :barppg
      t.float :barfg
      t.float :barapg
      t.float :barrpg
      t.float :barbpg
      t.float :barspg

      t.timestamps null: false
    end
  end
end
