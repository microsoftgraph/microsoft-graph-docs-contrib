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
			id = "7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0"
			isEnabled = $false
			origin = "Application"
			value = "Survey.Read"
		}
	)
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```