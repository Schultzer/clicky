defmodule ClickyTest do
  use ExUnit.Case
  doctest Clicky

  test "visitor_list/1" do
    assert Clicky.visitors_list(type: "action") == {:error, "if you want to set a specific type use Clicky.custom/1"}
    assert Clicky.visitors_list() == {:error, "site_id hasn't been set in config"}

  end

  test "custom/1" do
    assert Clicky.custom() == {:error, "Uhh you forgot to set a type like Clicky.custom(type: \"action-list\")"}
    assert Clicky.custom(type: "action") == {:error, "site_id hasn't been set in config"}
  end
end
