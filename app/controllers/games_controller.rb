class GamesController < ApplicationController

  def result_color
    if @result == "You tied!"
      @color = "warning"
    elsif @result == "You win!"
      @color = "success"
    elsif @result == "You lose!"
      @color = "danger"
    end
  end

  def game_logic
    if @user_move == @computer_move
      @result = "You tied!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "You win!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "You lose!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "You lose!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "You win!"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "You lose!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "You win!"
    end
  end

  def rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample

    game_logic

    result_color

  render("rock.html.erb")
  end

  def paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample

    game_logic

    result_color

  render("paper.html.erb")
  end

  def scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample

    game_logic

    result_color

  render("scissors.html.erb")
  end

end
