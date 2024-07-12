[Setup]
AppName=IMP_13
AppVersion=1.0
DefaultDirName={pf}\IMP_13
DefaultGroupName=Developer Creative Software
OutputDir={userdesktop}
OutputBaseFilename=IMP_13_Setup
Compression=lzma
SolidCompression=yes
DisableDirPage=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; Flags: unchecked
Name: "startmenuicon"; Description: "Create a &Start Menu icon"; GroupDescription: "Additional icons:"; Flags: unchecked

[Files]
Source: "C:\Users\kutdi\Desktop\IMP 13\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\IMP_13"; Filename: "{app}\IMP 13.EXE"; WorkingDir: "{app}"; Tasks: startmenuicon
Name: "{commondesktop}\IMP_13"; Filename: "{app}\IMP 13.EXE"; WorkingDir: "{app}"; Tasks: desktopicon

[Run]
Filename: "{app}\IMP 13.EXE"; Description: "Launch IMP_13"; Flags: nowait postinstall skipifsilent
