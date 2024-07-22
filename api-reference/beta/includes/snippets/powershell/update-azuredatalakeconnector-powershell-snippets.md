---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "microsoft.graph.industryData.azureDataLakeConnector"
	displayName = "CSV files from SIS"
}

Update-MgBetaExternalIndustryDataConnector -IndustryDataConnectorId $industryDataConnectorId -BodyParameter $params

```