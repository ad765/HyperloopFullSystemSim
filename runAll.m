% Run script for simulation
clear,clc

%% Initial conditions

% Simulation time
t0 = 0;
tf = 3000;

% State initialization
x0          = 0.005;
y0          = 0;
z0          = 0;
phi0        = 0;
theta0      = 0;
psi0        = 0; % in degrees
u0          = 0;
v0          = 0;
w0          = 100;
phidot0     = 0;
thetadot0   = 0;
psidot0     = 0;

% Thrust initialization
t_THRUST = 0;

Tx = 0;
Tx_err = 0;
Ty = 0;
Ty_err = 0;
Tz = 0;
Tz_err = 0;

% Magnetic levitation initialization
t_MAG1 = 0;
t_MAG2 = 0;
t_MAG3 = 0;
t_MAG4 = 0;

I_MAG1 = 1;
I_MAG2 = 1;
I_MAG3 = 1;
I_MAG4 = 1;

%% Extra parameters
iBeamThick = 0.313*(0.0254); %meters


%% Simulation files
sim('FullSystemSim.slx')