defmodule BirdCount do
  def today([]), do: nil
  def today(list), do: hd(list)

  def increment_day_count([]), do: [1]
  def increment_day_count([head | tail]), do: [head + 1 | tail]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?(list), do: today(list) == 0 or has_day_without_birds?(tl(list))

  def total([]), do: 0
  def total(list), do: today(list) + total(tl(list))

  def busy_days([]), do: 0
  def busy_days([head | tail]) when head < 5, do: busy_days(tail)
  def busy_days([_head | tail]), do: 1 + busy_days(tail)
end
