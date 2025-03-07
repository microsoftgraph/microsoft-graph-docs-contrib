---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.administrativeUnitProvisioningFlow"
	creationOptions = @{
		createBasedOnOrg = $true
		createBasedOnOrgPlusroleGroup = $true
	}
}

New-MgBetaExternalIndustryDataOutboundProvisioningFlowSetProvisioningFlow -OutboundProvisioningFlowSetId $outboundProvisioningFlowSetId -BodyParameter $params

```