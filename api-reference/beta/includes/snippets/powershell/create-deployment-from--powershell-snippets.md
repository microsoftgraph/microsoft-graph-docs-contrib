---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

$params = @{
	"@odata.type" = "#microsoft.graph.windowsUpdates.deployment"
	Content = @{
		"@odata.type" = "#microsoft.graph.windowsUpdates.catalogContent"
		CatalogEntry = @{
			"@odata.type" = "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry"
			Id = "f341705b-0b15-4ce3-aaf2-6a1681d78606"
		}
	}
	Settings = @{
		"@odata.type" = "microsoft.graph.windowsUpdates.deploymentSettings"
		Schedule = @{
			GradualRollout = @{
				"@odata.type" = "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings"
				DurationBetweenOffers = "P7D"
				DevicePerOffer = 
			}
		}
		Monitoring = @{
			MonitoringRules = @(
				@{
					Signal = "rollback"
					Threshold = 5
					Action = "pauseDeployment"
				}
			)
		}
	}
}

New-MgWindowsUpdatesDeployment -BodyParameter $params

```