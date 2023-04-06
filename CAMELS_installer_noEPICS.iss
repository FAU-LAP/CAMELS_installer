; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "NOMAD-CAMELS"
#define MyAppVersion "0.1"
#define MyAppPublisher "FAIRmat - NOMAD - J.A.Lehmeyer, A.D.Fuchs"
#define MyAppURL "https://fau-lap.github.io/CAMELS/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A92CC9D0-20B7-4520-822B-D67896E04F51}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName=CAMELS
LicenseFile=D:\Fuchs\Promotion\FAIRmat\CAMELS\CAMELS_installer\GPLv3_license.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
PrivilegesRequired=lowest
OutputBaseFilename=setup_CAMELS
SetupIconFile=D:\Fuchs\Promotion\FAIRmat\CAMELS\CAMELS\CAMELS\graphics\CAMELS.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
WizardImageFile=camels-vertical.bmp
WizardSmallImageFile=camels-vertical_small.bmp
; 'Types': What get displayed during the setup
[Types]
Name: "full";     Description: "Full installation of a python environment and CAMELS";
Name: "python_env";      Description: "Only installs the correct python environment using pyenv";
Name: "CAMELS_files"; Description: "Only installs the CAMELS files";
; Components are used inside the script and can be composed of a set of 'Types'
[Components]
Name: "python_env";      Description: "Only installs the correct python environment using pyenv";   Types: full python_env
Name: "CAMELS_files"; Description: "Only installs the CAMELS files";Types: full CAMELS_files
[Tasks]
Name: desktopicon; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; Components: CAMELS_files
Name: startmenu_add; Description: "Create a &start menu icon"; GroupDescription: "Additional icons:"; Components: CAMELS_files
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
;Source: "D:\Fuchs\Promotion\FAIRmat\CAMELS\CAMELS\CAMELS\*"; DestDir: "{app}\CAMELS"; Flags: recursesubdirs createallsubdirs; Components: python_env CAMELS_files
;Source: "D:\Fuchs\Promotion\FAIRmat\CAMELS\CAMELS\instruments\*"; DestDir: "{app}\instruments"; Flags: recursesubdirs createallsubdirs; Components: python_env CAMELS_files
;Source: "D:\Fuchs\Promotion\FAIRmat\CAMELS\CAMELS_installer\git_portable\*"; DestDir: "{tmp}\git_portable"; Flags: recursesubdirs createallsubdirs; Components: full
Source: "D:\Fuchs\Promotion\FAIRmat\CAMELS\CAMELS_installer\run_script.ps1"; DestDir: "{app}"; Components: python_env CAMELS_files
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
[Icons] 
Name: "{userdesktop}\CAMELS"; Filename: "{app}\MainApp_v2.py"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\CAMELS"; Filename: "{app}\MainApp_v2.py"; WorkingDir: "{app}"; Tasks: startmenu_add
[Run]
;Filename: "powershell.exe"; \
  Parameters: "-ExecutionPolicy Bypass -File ""{app}\run_script.ps1"" {app}";  WorkingDir: {app}; Flags: runhidden

