---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

$params = @{
	"@odata.type" = "#microsoft.graph.windowsUpdates.updatePolicy"
	Audience = @{
		Id = "8c4eb1eb-d7a3-4633-8e2f-f926e82df08e"
	}
	ComplianceChanges = @(
		@{
			"@odata.type" = "#microsoft.graph.windowsUpdates.contentApproval"
		}
	)
	ComplianceChangeRules = @(
		@{
			"@odata.type" = "#microsoft.graph.windowsUpdates.contentApprovalRule"
			ContentFilter = @{
				"@odata.type" = "#microsoft.graph.windowsUpdates.driverUpdateFilter"
			}
			DurationBeforeDeploymentStart = "P7D"
		}
	)
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

New-MgWindowsUpdatesPolicy -BodyParameter $params

```