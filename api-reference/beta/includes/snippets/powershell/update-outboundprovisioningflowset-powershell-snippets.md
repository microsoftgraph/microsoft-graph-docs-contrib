---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.outboundProvisioningFlowSet"
	displayName = "Outbound provisioning flow Updated"
}

Update-MgBetaExternalIndustryDataOutboundProvisioningFlowSet -OutboundProvisioningFlowSetId $outboundProvisioningFlowSetId -BodyParameter $params

```