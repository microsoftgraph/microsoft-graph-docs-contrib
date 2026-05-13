---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.WindowsUpdates

$params = @{
	"@odata.type" = "#microsoft.graph.windowsUpdates.qualityUpdateRing"
	displayName = "Ring0 - IT devices"
	description = "First deployment ring to test updates before going to prod."
	includedGroupAssignment = @{
		"@odata.type" = "microsoft.graph.windowsUpdates.includedGroupAssignment"
	}
	excludedGroupAssignment = @{
		"@odata.type" = "microsoft.graph.windowsUpdates.excludedGroupAssignment"
	}
	deferralInDays = 5
	isPaused = $false
}

New-MgBetaWindowsUpdatesPolicyRing -PolicyId $policyId -BodyParameter $params

```