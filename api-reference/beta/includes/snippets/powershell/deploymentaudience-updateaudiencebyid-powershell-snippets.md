---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.WindowsUpdates

$params = @{
	memberEntityType = "String"
	addMembers = @(
		"String"
	)
	removeMembers = @(
		"String"
	)
	addExclusions = @(
		"String"
	)
	removeExclusions = @(
		"String"
	)
}

Update-MgBetaWindowsUpdatesDeploymentAudienceById -DeploymentId $deploymentId -BodyParameter $params

```