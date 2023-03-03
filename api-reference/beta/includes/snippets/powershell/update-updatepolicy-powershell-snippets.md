---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

$params = @{
	"@odata.type" = "#microsoft.graph.windowsUpdates.updatePolicy"
	DeploymentSettings = @{
		"@odata.type" = "microsoft.graph.windowsUpdates.deploymentSettings"
		Schedule = @{
			GradualRollout = @{
				"@odata.type" = "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings"
				DurationBetweenOffers = "P1D"
				DevicePerOffer = 
			}
		}
	}
}

Update-MgWindowsUpdatesPolicy -UpdatePolicyId $updatePolicyId -BodyParameter $params

```