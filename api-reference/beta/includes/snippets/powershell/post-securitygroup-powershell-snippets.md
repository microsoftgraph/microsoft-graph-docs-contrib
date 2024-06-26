---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.securityGroupProvisioningFlow"
	creationOptions = @{
		createBasedOnroleGroup = $true
		createBasedOnOrgPlusroleGroup = $false
	}
}

New-MgBetaExternalIndustryDataOutboundProvisioningFlowSetProvisioningFlow -OutboundProvisioningFlowSetId $outboundProvisioningFlowSetId -BodyParameter $params

```