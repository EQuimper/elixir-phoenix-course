defmodule Discuss.Comment do
  use Discuss.Web, :model

  schema "comments" do
    field :content, string
    belongs_to :user, Discuss.User
    belongs_to :topic, Discuss.Topic

    timestamps()
  end
end
