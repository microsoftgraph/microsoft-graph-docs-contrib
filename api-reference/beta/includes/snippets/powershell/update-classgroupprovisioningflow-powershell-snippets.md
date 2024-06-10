---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.classGroupProvisioningFlow"
	configuration = @{
		"@odata.type" = "#microsoft.graph.industryData.classGroupConfiguration"
		additionalAttributes = @(
		"courseTitle"
	"courseCode"
)
additionalOptions = @{
	"@odata.type" = "#microsoft.graph.industryData.additionalClassGroupOptions"
	createTeam = $false
	writeDisplayNameOnCreateOnly = $false
}
enrollmentMappings = @{
	"@odata.type" = "#microsoft.graph.industryData.enrollmentMappings"
	memberEnrollmentMappings = @(
		@{
			"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
			code = "substitute"
		}
	)
	ownerEnrollmentMappings = @(
		@{
			"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
			code = "teacher"
		}
	)
}
}
}

Update-MgBetaExternalIndustryDataOutboundProvisioningFlowSetProvisioningFlow -OutboundProvisioningFlowSetId $outboundProvisioningFlowSetId -ProvisioningFlowId $provisioningFlowId -BodyParameter $params

```