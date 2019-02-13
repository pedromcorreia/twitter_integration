defmodule TwitterIntegrationTest do
  use ExUnit.Case
  doctest TwitterIntegration

  test "greets the world" do
    assert TwitterIntegration.hello() == :world
  end
end
