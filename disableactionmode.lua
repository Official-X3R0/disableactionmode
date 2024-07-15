CreateThread(function()
    SetDisableAmbientMeleeMove(PlayerPedId(), true)
    while true do
        Wait(500)  -- Increase the wait time to reduce CPU usage
        local ped = PlayerPedId()
        if IsPedUsingActionMode(ped) then
            SetPedUsingActionMode(ped, -1, -1, 1)
        end
    end
end)