addMissionEventHandler ["EntityKilled", {
    params ["_unit", "_killer", "_instigator", "_useEffects"];

    if (!(_unit getVariable ["HVT", false])) then {
        [_unit, _killer, _instigator, _useEffects] spawn {
            params ["_unit", "_killer", "_instigator", "_useEffects"];
                           
            if (!isPlayer _unit) then {sleep 1200; deleteVehicle _unit};
            if (isPlayer _unit) then {sleep 1500; deleteVehicle _unit};
       													 };
  												  };
}];
