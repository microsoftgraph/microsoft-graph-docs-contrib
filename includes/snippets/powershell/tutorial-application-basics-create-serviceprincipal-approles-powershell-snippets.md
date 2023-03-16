---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	AppRoles = @(
		@{
			AllowedMemberTypes = @(
				"User"
				"Application"
			)
			Description = "Survey.Read"
			DisplayName = "Survey.Read"
			Id = "7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0"
			IsEnabled = $false
			Origin = "Application"
			Value = "Survey.Read"
		}
	)
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```