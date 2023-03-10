filename = 'Cantilever';
ptype = 'MACRO';
method = 'SIMPALL';
materialType = 'ISOTROPIC';
initial_case = 'full';
cost = {'compliance','perimeter'};
weights = [1 0.1];
constraint = {'volumeConstraint'};
%optimizerUnconstrained = 'PROJECTED GRADIENT'; 
optimizer = 'MMA';%'DualNestedInPrimal';%'DualNestedInPrimal';
incrementFactor = 1;
kfrac = 1.05;
designVariable = 'Density';
filterType = 'P1';


nsteps = 6;
Vfrac_final = 0.4;
optimality_final =1e-5;
constr_final =1e-5;

Vfrac_initial = 1;
optimality_initial = 1e-3;
constr_initial = 1e-3;
Perimeter_target = 1;

TOL.rho_plus = 1;
TOL.rho_minus = 0;
TOL.E_plus = 1;
TOL.E_minus = 1e-3;
TOL.nu_plus = 1/3;
TOL.nu_minus = 1/3;

% For all tests
plotting = true;
printing = false;
printing_physics = false;
monitoring = true;
maxiter = 300;
