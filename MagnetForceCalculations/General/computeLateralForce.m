function [lateralForce] = computeLateralForce(airGap,current)

%i-beam constants
alumResistivity = 100 * (3.99e-006); %ohm-m
alumConducitivity = 1/alumResistivity; %S/m
iBeamThick = 0.313*(0.0254); %meters
%relative permeability
mu = 4*pi*10^(-7)*200000;

podVelocity = 200*(0.44704); %meters per second

%constants chosen for simulation purposes
windings = 1000;
crossSectArea = 1;

%compute lateral force for one magnet using magnetLateralForce Module
[lateralForce] = magnetLateralForce(alumConducitivity, ...
mu, iBeamThick, podVelocity, airGap, windings, current, crossSectArea);
end
