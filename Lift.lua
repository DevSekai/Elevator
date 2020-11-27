Lift = {
    CrtZone = nil,
    CrtLift = {},
    Floor = {
        {Pos = vector3(2445.149, 3771.257, 41.00579), Label = "0", Zone = "Commisairiat", Floor = 1},
        {Pos = vector3(2443.561, 3766.491, 40.95709), Label = "+1", Zone = "Commisairiat", Floor = 2},
        {Pos = vector3(2454.112, 3767.125, 41.61618), Label = "+2", Zone = "Commisairiat", Floor = 3},
        {Pos = vector3(2459.988, 3776.09, 41.37294), Label = "+3", Zone = "Commisairiat", Floor = 4},

        {Pos = vector3(2443.37, 3779.624, 41.06474), Label = "-3", Zone = "Casino", Floor = 1},
        {Pos = vector3(2444.226, 3783.176, 40.70562), Label = "-2", Zone = "Casino", Floor = 2},
        {Pos = vector3(2443.767, 3787.659, 40.16113), Label = "-1", Zone = "Casino", Floor = 3},
        {Pos = vector3(2447.59, 3789.804, 40.14594), Label = "0", Zone = "Casino", Floor = 4},
    },
}

--[[ Explication de la table : 
        CrtZone : Se définie lors d'entré dans une zone
        CrtLift : Les niveaux de l'ascenseur lié a la zone
        Pos : Toujours en vector3 fivem a "du mal avec x,y,z"
        Label : Nom dans le menu
        Zone : Permet de différencier les differents ascenseurs
        Floor : L'orde des buttons dans le menu
--]]

Lift.TakeLift = function(Pos)
    RageUI.CloseAll()
    DoScreenFadeOut(1500)
    Citizen.Wait(1500)
    SetEntityCoords(PlayerPedId(), Pos)
    Lift.CrtLift = {}
    DoScreenFadeIn(1500)
    Citizen.Wait(1500)
    FreezeEntityPosition(PlayerPedId(), false)
end

Lift.LeaveLift = function()
    RageUI.CloseAll()
    Lift.CrtLift = {}
    FreezeEntityPosition(PlayerPedId(), false)
end

Lift.Help = function (Txt)
	AddTextEntry('HelpNotify', Txt)
	BeginTextCommandDisplayHelp('HelpNotify')
	EndTextCommandDisplayHelp(0, false, true, -1)
end