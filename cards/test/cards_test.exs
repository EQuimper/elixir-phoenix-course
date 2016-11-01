defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 28 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 28
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck) # refute better than assert for !=
  end
end
