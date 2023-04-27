---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

$params = @{
	"@odata.type" = "#microsoft.graph.windowsUpdates.deployment"
	settings = @{
		"@odata.type" = "microsoft.graph.windowsUpdates.deploymentSettings"
		monitoring = @{
			monitoringRules = @(
				@{
					signal = "rollback"
					threshold = 5
					action = "pauseDeployment"
				}
			)
		}
	}
}

Update-MgWindowsUpdatesDeployment -DeploymentId $deploymentId -BodyParameter $params

```