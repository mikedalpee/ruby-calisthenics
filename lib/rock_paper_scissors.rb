class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end
    
  @@rules = { R: "S", S: "P", P: "R"}

  def self.winner(player1, player2)
    if player1[1] !~ /[RPS]/ || player2[1] !~ /[RPS]/
      raise NoSuchStrategyError,  "Strategy must be one of R,P,S"
    end
   
    return player1 if @@rules[player1[1].to_sym] == player2[1]
    return player2 if @@rules[player2[1].to_sym] == player1[1]
    
    player1
  end

  def self.tournament_winner(tournament)
    if (tournament[0].class == Array && tournament[0][0].class == String)
      return self.winner(tournament[0],tournament[1])
    else
      return self.tournament_winner([self.tournament_winner(tournament[0]),self.tournament_winner(tournament[1])])
    end
  end

end
