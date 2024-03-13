---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	name = "jobGroupTracker"
	dataType = "String"
	targetObjects = @(
		"User"
	)
}

New-MgApplicationExtensionProperty -ApplicationId $applicationId -BodyParameter $params

```