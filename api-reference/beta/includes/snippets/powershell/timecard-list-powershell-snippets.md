---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

Get-MgTeamScheduleTimeCard -TeamId $teamId -Top 2 -Filter "state eq 'clockedOut'"  -OutFile $outFileId

```