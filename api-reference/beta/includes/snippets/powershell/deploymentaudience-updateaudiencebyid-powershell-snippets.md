---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

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

Update-MgWindowsUpdatesDeploymentAudienceById -DeploymentId $deploymentId -BodyParameter $params

```