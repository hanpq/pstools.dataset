[Setup]
AppId={{ a0e2a1b6-0a1d-4a6f-bf07-ff45a1d75e20 }}
AppName=pstools.dataset
AppVersion=1.4
AppPublisher=
AppPublisherURL=
AppSupportURL=
AppUpdatesURL=
DefaultDirName={userdocs}\WindowsPowerShell\Modules\pstools.dataset
DisableDirPage=yes
DefaultGroupName=pstools.dataset
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
OutputDir=C:\Users\hanpalmq\OneDrive\DEV\Powershell\modules\pstools.dataset\release\1.4
OutputBaseFilename=pstools.dataset.1.4.Installer
Compression=lzma
SolidCompression=yes
WizardStyle=modern
Uninstallable=yes
SetupIconFile=C:\Users\hanpalmq\OneDrive\DEV\Powershell\modules\pstools.dataset\stage\pstools.dataset\1.4\data\appicon.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\hanpalmq\OneDrive\DEV\Powershell\modules\pstools.dataset\stage\pstools.dataset\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist

[Icons]
Name: "{userdesktop}\pstools.dataset"; Filename: "{sys}\WindowsPowerShell\v1.0\powershell.exe"; Parameters: "-executionpolicy bypass -noexit -noprofile -file ""{app}\1.4\data\banner.ps1"""; IconFilename: "{app}\1.4\data\AppIcon.ico"

[Run]
Filename: "Powershell.exe"; Parameters: "-executionpolicy bypass -noexit -noprofile -file ""{app}\1.4\data\banner.ps1"""; Description: "Run pstools.dataset"; Flags: postinstall nowait


