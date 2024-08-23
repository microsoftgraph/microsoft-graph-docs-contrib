---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.userProvisioningFlow"
	createUnmatchedUsers = $true
	managementOptions = @{
		additionalAttributes = @(
		"userGradeLevel"
	)
	additionalOptions = @{
		markAllStudentsAsMinors = $true
		allowStudentContactAssociation = $false
	}
}
creationOptions = @{
	configurations = @(
		@{
			"roleGroup@odata.bind" = "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff"
			defaultPasswordSettings = @{
				"@odata.type" = "#microsoft.graph.industryData.simplePasswordSettings"
				password = "********"
			}
			licenseSkus = @(
			"Sku1"
		)
	}
	@{
		"roleGroup@odata.bind" = "https://graph.microsoft.com/beta/external/industryData/roleGroups/students"
		defaultPasswordSettings = @{
			"@odata.type" = "#microsoft.graph.industryData.simplePasswordSettings"
			password = "********"
		}
		licenseSkus = @(
		"Sku2"
	)
}
)
}
}

New-MgBetaExternalIndustryDataOutboundProvisioningFlowSetProvisioningFlow -OutboundProvisioningFlowSetId $outboundProvisioningFlowSetId -BodyParameter $params

```