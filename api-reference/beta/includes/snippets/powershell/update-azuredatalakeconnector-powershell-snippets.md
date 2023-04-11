---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	"@odata.type" = "microsoft.graph.industryData.azureDataLakeConnector"
	DisplayName = "API Monitor 60201009"
}

Update-MgExternalIndustryDataConnector -IndustryDataConnectorId $industryDataConnectorId -BodyParameter $params

```