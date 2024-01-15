---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"@odata.type" = "#microsoft.graph.teamsAppSettings"
	isUserPersonalScopeResourceSpecificConsentEnabled = $true
}

Update-MgTeamworkTeamAppSetting -BodyParameter $params

```