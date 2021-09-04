function asbFDIRAppSLDV()
% Create Simulink Design Verifier tests for the fault management Stateflow
% chart.

% Copyright 2014-2015 The MathWorks, Inc.

% Open Fault Management model
modelName = 'asbhl20_FDIRmodelogicApp';
open_system(modelName);

% Use Simulink Project API to get the current project:
p = slproject.getCurrentProject;

% Get the project root folder:
projectRoot = p.RootFolder;

% Define options for the SLDV run
opts = sldvoptions;
opts.MaxProcessTime = 600;
opts.OutputDir = [projectRoot '/tests/' modelName];
opts.SaveHarnessModel = 'on';
opts.MakeOutputFilesUnique = 'off';
opts.SaveExpectedOutput = 'on';

% Run SLDV
[~,~,~,~] = sldvrun(modelName,opts,true);

% Disable reporting for the harness model it can be used without Simulink
% Verification and Validation. 
harnessModelName = [modelName '_harness'];

% Check that the file has been created before running further tests
if exist(fullfile(projectRoot,'tests',modelName,harnessModelName),'file')
    % Open model if is not loaded already
    if ~bdIsLoaded(harnessModelName)
        open_system(harnessModelName);
    end
    
    set_param(harnessModelName,'RecordCoverage','off');
    
    % Save baseline for testing
    set_param(harnessModelName,'OutputSaveName',[harnessModelName 'Output']);
    sim(harnessModelName);
    save([projectRoot '/tests/' modelName '/' harnessModelName '_baseline'],...
        [harnessModelName 'Output']);
    
    % Save and close testing model
    save_system(harnessModelName);
    if bdIsLoaded(harnessModelName)
        close_system(harnessModelName);
    end
end

% Close Fault Management Model
if bdIsLoaded(modelName)
    close_system(modelName);
end
% [EOF]
