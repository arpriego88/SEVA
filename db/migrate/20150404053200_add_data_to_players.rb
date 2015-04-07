class AddDataToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :seva_score_c, :float
    add_column :players, :ppgc, :float
    add_column :players, :apgc, :float
    add_column :players, :rpgc, :float
    add_column :players, :bpgc, :float
    add_column :players, :spgc, :float
    add_column :players, :fgpc, :integer
    add_column :players, :seva_score_f, :float
    add_column :players, :ppgf, :float
    add_column :players, :apgf, :float
    add_column :players, :rpgf, :float
    add_column :players, :bpgf, :float
    add_column :players, :spgf, :float
    add_column :players, :fgpf, :integer
    add_column :players, :seva_score_s, :float
    add_column :players, :ppgs, :float
    add_column :players, :apgs, :float
    add_column :players, :rpgs, :float
    add_column :players, :bpgs, :float
    add_column :players, :spgs, :float
    add_column :players, :fgps, :integer
    add_column :players, :seva_score_j, :float
    add_column :players, :ppgj, :float
    add_column :players, :apgj, :float
    add_column :players, :rpgj, :float
    add_column :players, :bpgj, :float
    add_column :players, :spgj, :float
    add_column :players, :fgpj, :integer
    add_column :players, :seva_score_sr, :float
    add_column :players, :ppgsr, :float
    add_column :players, :apgsr, :float
    add_column :players, :rpgsr, :float
    add_column :players, :bpgsr, :float
    add_column :players, :spgsr, :float
    add_column :players, :fgpsr, :integer
  end
end
