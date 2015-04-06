require 'csv'

namespace :import do 
  desc "import players"
  task players: :environment do
    filename = File.join Rails.root, "SEVADB(4-3-15).csv"
    counter = 0

    CSV.foreach(filename, headers: true, header_converters: :symbol) do |row|
      player = Player.create!(name: row[:name], espn: row[:espn], scout: row[:scout], rivals: row[:rivals], committed_to: row[:committed_to], st: row[:st], hsclass: row[:hsclass], height: row[:height], 
      seva_score_c: row[:seva_score_c], ppgc: row[:ppgc], apgc: row[:apgc], rpgc: row[:rpgc], bpgc: row[:bpgc], spgc: row[:spgc], fgpc: row[:fgpc], high_school: row[:high_school], risk_score: row[:risk_score],
      position: row[:position], style: row[:style], past_similar_one: row[:past_similar_one], past_similar_two: row[:past_similar_two], past_similar_three: row[:past_similar_three],
      current_similar_one: row[:current_similar_one], current_similar_two: row[:current_similar_two], current_similar_three: row[:current_similar_three], barwin: row[:barwin],
      barppg: row[:barppg], barfg: row[:barfg], barapg: row[:barapg], barrpg: row[:barrpg], barbpg: row[:barbpg], barspg: row[:barspg],
      seva_score_f: row[:seva_score_f], ppgf: row[:ppgf], apgf: row[:apgf], rpgf: row[:rpgf], bpgf: row[:bpgf], spgf: row[:spgf], fgpf: row[:fgpf],
      seva_score_s: row[:seva_score_s], ppgs: row[:ppgs], apgs: row[:apgs], rpgs: row[:rpgs], bpgs: row[:bpgs], spgs: row[:spgs], fgps: row[:fgps],
      seva_score_j: row[:seva_score_j], ppgj: row[:ppgj], apgj: row[:apgj], rpgj: row[:rpgj], bpgj: row[:bpgj], spgj: row[:spgj], fgpj: row[:fgpj],
      seva_score_sr: row[:seva_score_sr], ppgsr: row[:ppgsr], apgsr: row[:apgsr], rpgsr: row[:rpgsr], bpgsr: row[:bpgsr], spgsr: row[:spgsr],
      fgpsr: row[:fgpsr])
      counter += 1 if player.persisted?
    end
    puts "Imported #{counter} players"
  end
end