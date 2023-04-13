---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.inboundFileFlow"
	displayName = "Updated flow name"
}

Update-MgExternalIndustryDataInboundFlow -InboundFlowId $inboundFlowId -BodyParameter $params

```