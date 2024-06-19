---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.inboundApiFlow"
	displayName = "Updated flow name"
}

Update-MgBetaExternalIndustryDataInboundFlow -InboundFlowId $inboundFlowId -BodyParameter $params

```