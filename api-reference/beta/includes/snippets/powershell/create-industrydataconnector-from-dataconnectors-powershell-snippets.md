---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.azureDataLakeConnector"
	displayName = "CSV connector"
	"sourceSystem@odata.bind" = "https://graph.microsoft.com/beta/external/industryData/sourceSystems('aa050107-5784-4a8e-1876-08daddab21bc')"
}

New-MgExternalIndustryDataConnector -BodyParameter $params

```