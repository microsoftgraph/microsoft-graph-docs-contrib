---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.referenceDefinition"
	displayName = "Updated Test Grade Name"
}

Update-MgBetaExternalIndustryDataReferenceDefinition -ReferenceDefinitionId $referenceDefinitionId -BodyParameter $params

```