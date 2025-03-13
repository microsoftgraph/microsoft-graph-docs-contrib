---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	"@odata.type" = "#microsoft.graph.teamsAppSettings"
	isUserPersonalScopeResourceSpecificConsentEnabled = "true"
}

Update-MgBetaTeamworkTeamAppSetting -BodyParameter $params

```