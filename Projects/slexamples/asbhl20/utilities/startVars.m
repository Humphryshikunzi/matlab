%% startVars.m - Initialize variables
% This script initializes variables for the HL-20 project.

%   Copyright 2014-2015 The MathWorks, Inc.

% Register variables in the workspace before the project is loaded
initVars = who;

% Load Main model data
load('asbhl20data.mat');

% Load FlightGear previously saved data
load('asbhl20FlightGear.mat');

% Load Flight Control System data
load('asbhl20_FCSAppData.mat');

% Load FDIR data
load('asbhl20_FDIRAppData.mat');

% Load Guidance controler data
load('asbhl20_GuidanceAppData.mat');

% Load common data among the referenced models
load('asbhl20GlobalChildrenData.mat');

% Set time
timeSince1970.Value = etime(datevec(now),[1970, 1, 1, 0, 0, 0]);

% Variant Conditions

% Depending on whether or not Stateflow is installed and a license is
% available, the corresponding Fault Detection variant is selected.
installedProducts = ver;
stateflowFlag = false;
for k=1:length(installedProducts)
    if strcmp(installedProducts(k).Name,'Stateflow')
        testLicense = license('test','stateflow');
        if testLicense
            stateflowFlag = true;
        end
    end
end
if stateflowFlag
    Variants.FDIRApp = 3;   % 0 - No FDIRApp logic
                            % 1 - Subsystem
                            % 2 - Model Reference
                            % 3 - Stateflow chart
else
    Variants.FDIRApp = 0;   % 0 - No FDIRApp logic
                            % 1 - Subsystem
                            % 2 - Model Reference
                            % 3 - Stateflow chart
end

% Set default behavior for FlightGear to be pre-saved data
Variants.FlightGear = 0;    % 0 - Previously Saved Data
                            % 1 - FlightGear
                            % 2 - Signal Builder
                            % 3 - Constants
                            % 4 - Spreadsheet data

% Add enum structure for the Variants
 Simulink.defineIntEnumType('Variants',{'FDIRApp','FlightGear'},[0;0]);

% Register variables after the project is loaded and store the variables in
% initVars so they can be cleared later on the project shutdown.
endVars = who;
initVars = setdiff(endVars,initVars);
clear endVars;
