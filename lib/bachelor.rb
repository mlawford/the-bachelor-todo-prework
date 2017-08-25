def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ").first
    end
  end

end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |attribute|
    if attribute["occupation"] == occupation
      return attribute["name"]
    end
  end
  end
end

def count_contestants_by_hometown(data, hometown)
  contestant_count = 0
  data.each do |season, contestant|
    contestant.each do |attribute|
      if attribute["hometown"] == hometown
        contestant_count += 1
      end
    end
  end
  return contestant_count

end

def get_occupation(data, hometown)
  occupation_counter = 0
  data.each do |season, contestant|
    contestant.each do |attribute|
      if attribute["hometown"] == hometown
        return attribute["occupation"]
        contestant_count += 1
        break if contestant_count > 1
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  num_of_contestants = 0
  data[season].each do |contestant_hash|
    age_total += (contestant_hash["age"]).to_i
    num_of_contestants += 1
  end
  (age_total / num_of_contestants.to_f).round(0)
end
