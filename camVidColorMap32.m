function cmap = camVidColorMap32

cmap = [
    128 128 128     % Sky
     0 128  64     % Bridge
    128   0   0     % Building
     64 192   0     % Wall
     64   0  64     % Tunnel
    192   0 128     % Archway
    192 192 128     % Column_Pole
      0   0  64     % TrafficCone
    128  64 128     % Road
    128   0 192     % LaneMkgsDriv
    192   0  64     % LaneMkgsNonDriv
      0   0 192     % Sidewalk 
     64 192 128     % ParkingBlock
    128 128 192     % RoadShoulder
    128 128   0     % Tree
    192 192   0     % VegetationMisc
    192 128 128     % SignSymbol
    128 128  64     % Misc_Text
      0  64  64     % TrafficLight
     64  64 128     % Fence
     64   0 128     % Car
     64 128 192     % SUVPickupTruck
    192 128 192     % Truck_Bus
    192  64 128     % Train
    128  64  64     % OtherMoving
     64  64   0     % Pedestrian
    192 128  64     % Child
     64   0 192     % CartLuggagePram
     64 128  64     % Animal
     0 128 192     % Bicyclist
    192   0 192     % MotorcycleScooter
     0   0   0     % Void
    ];
    
   

% Normalize between [0 1].
cmap = cmap ./ 255;

end