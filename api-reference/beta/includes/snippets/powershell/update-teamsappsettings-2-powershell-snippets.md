---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"@odata.type" = "#microsoft.graph.teamsAppSettings"
	AllowUserRequestsForAppAccess = "true"
}

Update-MgTeamworkTeamAppSetting -BodyParameter $params

```