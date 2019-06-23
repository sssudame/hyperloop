--First using
script.on_init(function(event)
  
end)

script.on_event({defines.events.on_built_entity}, function(event) 
  if event.created_entity.name == "hyperloop-station" then
    Teleportation_RememberBeacon(event.created_entity)
  elseif event.created_entity.name == "teleportation-teleprovider" then
    Telelogistics_RememberProvider(event.created_entity)
  elseif event.created_entity.name == "teleportation-portal" then
    local player = event.created_entity.last_user
    player.cursor_stack.set_stack({name = "teleportation-portal", count = 1})
    event.created_entity.destroy()
  elseif event.created_entity.name == "entity-ghost" then
    if event.created_entity.ghost_name == "teleportation-portal" then
      event.created_entity.destroy()
    end
  end
end)