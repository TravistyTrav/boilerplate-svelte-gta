-- Define a command handler on the server
RegisterCommand("openMenu", function(source, args, rawCommand)
  -- Put your server-side logic here (if needed)
  -- For example, you can check conditions, query databases, or perform any server-side actions.

  -- Trigger a client event to open the menu on the client-side
  TriggerClientEvent('point_of_sale:client:open', source)
end, false)
