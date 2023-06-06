---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	"@odata.type" = "microsoft.graph.industryData.azureDataLakeConnector"
	displayName = "API Monitor 60201009"
}

Update-MgExternalIndustryDataConnector -IndustryDataConnectorId $industryDataConnectorId -BodyParameter $params

```