---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	appRoles = @(
		@{
			allowedMemberTypes = @(
			"User"
		"Application"
	)
	description = "Survey.Read"
	displayName = "Survey.Read"
	id = "ebb7c86c-fb47-4e3f-8191-420ff1b9de4a"
	isEnabled = $false
	origin = "Application"
	value = "Survey.Read"
}
)
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```