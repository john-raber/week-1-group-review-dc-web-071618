require 'pry'

## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
pokemon[0][:abilities][0][:ability][:url]

# How would you return the first pokemon with base experience over 40?
def first_over_40?(pokemon)
  pokemon.find do |pokemon|
    pokemon[:base_experience] > 40
  end
end

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def all_over_40?(pokemon)
  pokemon.select do |pokemon|
    pokemon[:base_experience] > 40
  end
end

# How would you return an array of all of the pokemon's names?
def all_names(pokemon)
  pokemon.map do |pokemon|
    pokemon[:name]
  end
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
def any_weight_over_60(pokemon)
  pokemon.any? do |pokemon|
    pokemon[:weight] > 60
  end
end

#  whatever method you use should return true if there are any such pokemon, false if not.
def any_weight_over_60(pokemon)
  pokemon.any? do |pokemon|
    pokemon[:weight] > 60
  end
end
