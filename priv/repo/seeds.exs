# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Juicerater.Repo.insert!(%Juicerater.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Juicerate.Juice
alias Juicerate.Repo

%Juice{name: "Apple", rating: 3} |> Repo.insert!
%Juice{name: "Grape", rating: 2} |> Repo.insert!
%Juice{name: "Cranberry", rating: 3} |> Repo.insert!
%Juice{name: "Orange", rating: 5} |> Repo.insert!
%Juice{name: "Cork", rating: 5} |> Repo.insert!