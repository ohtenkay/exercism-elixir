defmodule Lasagna do
  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(mins) do
    expected_minutes_in_oven() - mins
  end

  def preparation_time_in_minutes(layers), do: layers * 2

  def total_time_in_minutes(layers, mins_in_oven) do
    preparation_time_in_minutes(layers) + mins_in_oven
  end

  def alarm, do: "Ding!"
end
