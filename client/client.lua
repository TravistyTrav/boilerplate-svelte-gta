local display = false

function SetDisplay(bool)
  display = bool
  SendNUIMessage({
      action = "toggleShow",
      status = bool,
  })
  SetNuiFocus(bool, bool)
end

-- Command used to open the view
-- Listen for the "openMenu" event from the server
RegisterNetEvent("point_of_sale:client:open")
  AddEventHandler("point_of_sale:client:open", function()
    TriggerScreenblurFadeIn(1000)
    SetDisplay(true)
  end)


-- This callback handles closing the app window within our app
RegisterNUICallback('exitMenu', function()
  TriggerScreenblurFadeOut(1000)
  SetDisplay(false)
end)