data:extend(
  {
    {
      type = "technology",
      name = "hyperloop",
      icon = "__hyperloop__/graphics/technology/station.png",
      icon_size = 128,
      prerequisites =
      {
        "railway",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "hyperloop-station"
        },
      },
      unit =
      {
        count = 75,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
        },
        time = 15
      },
      order = "c-a"
    },
  }
)