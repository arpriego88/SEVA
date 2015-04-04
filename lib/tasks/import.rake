require 'csv'

namespace :import do 
  desc "import players"
  task players: :environment do
    filename = File.join Rails.root, "SEVA(3-26-15).csv"
    counter = 0

    CSV.foreach(filename, headers: true, header_converters: :symbol) do |row|
      player = Player.create!(name: row[:name], espn: row[:espn], scout: row[:scout], rivals: row[:rivals], committed_to: row[:committed_to], st: row[:st], stat_year: row[:stat_year], hsclass: row[:hsclass], height: row[:height], 
      seva_score: row[:seva_score], win: row[:win], ppg: row[:ppg], apg: row[:apg], rpg: row[:rpg], bpg: row[:bpg], spg: row[:spg], fg: row[:fg], high_school: row[:high_school], risk_score: row[:risk_score],
      position: row[:position], style: row[:style], past_similar_one: row[:past_similar_one], past_similar_two: row[:past_similar_two], past_similar_three: row[:past_similar_three],
      current_similar_one: row[:current_similar_one], current_similar_two: row[:current_similar_two], current_similar_three: row[:current_similar_three], barwin: row[:barwin],
      barppg: row[:barppg], barfg: row[:barfg], barapg: row[:barapg], barrpg: row[:barrpg], barbpg: row[:barbpg], barspg: row[:barspg])
      counter += 1 if player.persisted?
    end
    puts "Imported #{counter} players"
  end
end