---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

$params = @{
	AddMembers = @(
		@{
			"@odata.type" = "#microsoft.graph.windowsUpdates.azureADDevice"
			Id = "String (identifier)"
		}
	)
	RemoveMembers = @(
		@{
			"@odata.type" = "#microsoft.graph.windowsUpdates.azureADDevice"
			Id = "String (identifier)"
		}
	)
	AddExclusions = @(
		@{
			"@odata.type" = "#microsoft.graph.windowsUpdates.azureADDevice"
			Id = "String (identifier)"
		}
	)
	RemoveExclusions = @(
		@{
			"@odata.type" = "#microsoft.graph.windowsUpdates.azureADDevice"
			Id = "String (identifier)"
		}
	)
}

Update-MgWindowsUpdatesDeploymentAudience -DeploymentId $deploymentId -BodyParameter $params

```