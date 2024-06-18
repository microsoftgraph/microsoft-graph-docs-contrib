---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "microsoft.graph.industryData.oneRosterApiDataConnector"
	displayName = "One Roster Connector"
}

Update-MgBetaExternalIndustryDataConnector -IndustryDataConnectorId $industryDataConnectorId -BodyParameter $params

```