require 'pry'
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def get_player_details
  game_hash
  new_hash = {}
  
end
        

def num_points_scored(input_name)
  game_hash
  score = 0
  game_hash.each { |home_key, home_value|
      home_value.each { |titles, player_details|
        if titles == :players
          #binding.pry
          player_details.length.times { |i|
            if player_details[i][:player_name] == input_name
              #binding.pry
              score = player_details[i][:points]
              #binding.pry
            else
              next
            end
          }
        else
          next
        end
      }
  }
  score
end

def shoe_size(input_name)
  game_hash
  shoe = 0
  game_hash.each { |home_key, home_value|
      home_value.each { |titles, player_details|
        if titles == :players
          player_details.length.times { |i|
            if player_details[i][:player_name] == input_name
              shoe = player_details[i][:shoe]
            else
              next
            end
          }
        else
          next
        end
      }
  }
  shoe
end

def team_colors(input_name)
  game_hash
  final_color = []
  game_hash.each { |home_key, home_value|
    home_value.each { |titles, content|
    if content == input_name
      final_color = game_hash[home_key][:colors]
      #binding.pry
    else
      next
    end
    }
  }
  final_color
end

def team_names
  game_hash
  fin_arr = []
  game_hash.each { |home_key, home_value|
    fin_arr << game_hash[home_key][:team_name]
  }
  fin_arr
end

def player_numbers(input_name)
  game_hash
  jersey = []
  game_hash.each { |home_key, home_value|
    #binding.pry
    if home_value[:team_name] == input_name
      home_value.each { |titles, player_details|
        if titles == :players
          player_details.length.times { |i|
            jersey << player_details[i][:number]
          }
        end
      }
    else
      next
    end
  }
  jersey
end

def player_stats(input_name)
  game_hash
  fin_har = {}
  game_hash.each { |home_key, home_value|
      home_value.each { |titles, player_details|
        if titles == :players
          player_details.length.times { |i|
            if player_details[i][:player_name] == input_name
              fin_har = player_details[i]
            else
              next
            end
          }
        else
          next
        end
      }
  }
  fin_har
end

def big_shoe_rebounds
  game_hash
  shoe = 0
  rebounds = 0
  game_hash.each { |home_key, home_value|
      home_value.each { |titles, player_details|
        if titles == :players
          player_details.length.times { |i|
            if shoe < player_details[i][:shoe]
              shoe = player_details[i][:shoe]
            else
              next
            end
          }
        else
          next
        end
        if titles == :players
          player_details.length.times { |i|
            if player_details[i][:shoe] == shoe
              rebounds = player_details[i][:rebounds]
              #binding.pry
            else
              next
            end
          }
        else
          next
        end
      }
  }
rebounds
end