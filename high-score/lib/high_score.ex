defmodule HighScore do
  @initial_score 0

  def new(), do: %{}

  def add_player(scores, name, score \\ @initial_score), do: Map.put(scores, name, score)

  def remove_player(scores, name), do: Map.drop(scores, [name])

  def reset_score(scores, name), do: add_player(scores, name)

  def update_score(scores, name, score),
    do: Map.update(scores, name, score, fn prevscore -> prevscore + score end)

  def get_players(scores), do: Map.keys(scores)
end
