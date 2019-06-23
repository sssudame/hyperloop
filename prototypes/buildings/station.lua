data:extend(
  {
    {
      type = "item",
      name = "hyperloop-station",
      icon = "__hyperloop__/graphics/icons/station.png",
      icon_size = 32,
      flags = {"goes-to-quickbar"},
      subgroup = "hyperloop",
      order = "a[hyperloop-station]",
      place_result = "hyperloop-station",
      stack_size = 2,
    },
    {
      type = "container",
      name = "hyperloop-station",
      icon = "__hyperloop__/graphics/icons/station.png",
      icon_size = 32,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "hyperloop-station"},
      max_health = 300,
      corpse = "small-remnants",
      open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.65 },
      close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
      resistances =
      {
        {
          type = "fire",
          percent = 90
        }
      },
      collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
      selection_box = {{-3, -3}, {3, 3}},
      fast_replaceable_group = "hyperloop-station",
      inventory_size = 40,
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      picture =
      {
        filename = "__hyperloop__/graphics/entity/station.png",
        priority = "extra-high",
        width = 256,
        height = 288,
        shift = {0, -0.5}
      },
      circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
      circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance
    }
  }
)