Game.create!([
  {id: 1, is_over_32c: true}
])
Round.create!([
  {id: 1, game_id: 1, resultado_ruleta: "Negro"}
])
Player.create!([
  {id: 1, name: "Juan", money: 9000},
  {id: 2, name: "Andrea", money: 9300},
  {id: 3, name: "Felipe", money: 9600},
  {id: 4, name: "Billy", money: 9500},
  {id: 5, name: "Carlos", money: 9000},
  {id: 6, name: "Tom", money: 9600},
  {id: 7, name: "Vanessa", money: 10500},
  {id: 8, name: "Jake", money: 10900},
  {id: 9, name: "Heidi", money: 10500},
  {id: 10, name: "Nolan", money: 11000},
  {id: 11, name: "Camila", money: 10900}
])
Result.create!([
  {id: 1, bet: 1000, gain: 0, player_id: 1, round_id: 1, color_bet: "Rojo"},
  {id: 2, bet: 500, gain: 1000, player_id: 2, round_id: 1, color_bet: "Negro"},
  {id: 3, bet: 700, gain: 0, player_id: 3, round_id: 1, color_bet: "Rojo"},
  {id: 4, bet: 400, gain: 0, player_id: 4, round_id: 1, color_bet: "Rojo"},
  {id: 5, bet: 900, gain: 1800, player_id: 5, round_id: 1, color_bet: "Negro"},
  {id: 6, bet: 500, gain: 1000, player_id: 6, round_id: 1, color_bet: "Negro"},
  {id: 7, bet: 500, gain: 0, player_id: 7, round_id: 1, color_bet: "Rojo"},
  {id: 8, bet: 1000, gain: 0, player_id: 8, round_id: 1, color_bet: "Rojo"},
  {id: 9, bet: 400, gain: 0, player_id: 9, round_id: 1, color_bet: "Rojo"},
  {id: 10, bet: 1000, gain: 2000, player_id: 10, round_id: 1, color_bet: "Negro"},
  {id: 11, bet: 900, gain: 1800, player_id: 11, round_id: 1, color_bet: "Negro"}
])
