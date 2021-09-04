function asbSetSLRT
% ASBSETSLRT This utility set the HL20 project to work with SLRT

% Copyright 2016 The MathWorks, Inc.

% Model Reference models
modelrefName =  {...
    'asbhl20_FDIRApp',...
    'asbhl20_FCSApp',...
    'asbhl20_GuidanceApp'};

for k=1:length(modelrefName)
    % set_params to set build target to SLRT
    load_system(modelrefName{k});
    set_param(modelrefName{k},'SystemTargetFile','slrt.tlc');
    set_param(modelrefName{k},'SolverMode','SingleTasking');
    save_system(modelrefName{k});
    close_system(modelrefName{k});
end
% Build HL20 for slrt
modelname = 'asbhl20';
open_system(modelname);
set_param(modelname,'SystemTargetFile','slrt.tlc');
set_param(modelname,'SolverMode','SingleTasking');
set_param(modelname,'GenCodeOnly','on');
save_system(modelname);
msgbox('The HL20 example can now be run using Simulink Real-Time');