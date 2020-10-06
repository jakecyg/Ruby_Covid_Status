require 'csv'

# why do I refer to these with a capital?
# why does primary/secondary metric tables not have underscore(from model name)?
Country.delete_all
Region.delete_all
PrimaryMetric.delete_all
SecondaryMetric.delete_all

filename = Rails.root.join('db/country_wise_latest.csv')

puts "Loading source csv from: #{filename}"

csv_data = File.read(filename)
stats = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

stats.each do |s|
  region = Region.find_or_create_by(name: s['WHO Region'])
  puts region.name
  if region&.valid?
    country = region.countries.create(
      name: s['Country/Region']
    )
    puts country
  else
    puts "Invalid production company: #{production_company} for the movie #{m['original_title']}."
  end
end
# puts "Created #{ProductionCompany.count} production companies"
# puts "Created #{Movie.count} movies"
