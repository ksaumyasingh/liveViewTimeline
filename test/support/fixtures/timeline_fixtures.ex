defmodule Chrip.TimelineFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Chrip.Timeline` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        likes: "some likes",
        username: "some username"
      })
      |> Chrip.Timeline.create_post()

    post
  end
end
