---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.inboundFlow"
	DisplayName = "My Inbound Flow"
	EffectiveDateTime = [System.DateTime]::Parse("2022-03-12T16:40:46.924769+05:30")
	ExpirationDateTime = [System.DateTime]::Parse("2023-03-12T16:40:46.924769+05:30")
}

Update-MgExternalIndustryDataInboundFlow -InboundFlowId $inboundFlowId -BodyParameter $params

```