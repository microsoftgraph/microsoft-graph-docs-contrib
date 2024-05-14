---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.outboundProvisioningFlowSet"
	displayName = "Outbound Provisioning Flow Test"
	filter = @{
		"@odata.type" = "#microsoft.graph.industryData.basicFilter"
		attribute = "orgExternalId"
		in = @(
		"Quarter"
	"Demo"
)
}
}

New-MgBetaExternalIndustryDataOutboundProvisioningFlowSet -BodyParameter $params

```