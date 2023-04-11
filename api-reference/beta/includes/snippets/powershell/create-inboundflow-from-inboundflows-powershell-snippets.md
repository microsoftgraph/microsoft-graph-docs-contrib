---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.inboundFileFlow"
	"DataConnector@odata.bind" = "https://graph.microsoft.com/beta/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271"
	DataDomain = "educationRostering"
	DisplayName = "Inbound rostering flow"
	EffectiveDateTime = [System.DateTime]::Parse("2023-03-12T16:40:46.924769+05:30")
	ExpirationDateTime = [System.DateTime]::Parse("2023-03-13T16:40:46.924769+05:30")
	"Year@odata.bind" = "https://graph.microsoft.com/beta/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb"
}

New-MgExternalIndustryDataInboundFlow -BodyParameter $params

```