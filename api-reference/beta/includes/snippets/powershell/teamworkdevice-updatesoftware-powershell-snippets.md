---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	softwareType = "teamsClient"
	softwareVersion = "1.0.96.22"
}

Update-MgTeamworkDeviceSoftware -TeamworkDeviceId $teamworkDeviceId -BodyParameter $params

```