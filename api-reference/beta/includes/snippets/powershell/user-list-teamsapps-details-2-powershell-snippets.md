---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

Get-MgUserTeamworkInstalledApp -UserId $userId -ExpandProperty "teamsAppDefinition(`$expand=bot)"  -OutFile $outFileId

```