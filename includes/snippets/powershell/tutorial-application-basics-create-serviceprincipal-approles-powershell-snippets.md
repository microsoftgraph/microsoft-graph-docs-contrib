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
			)
			Description = "Survey.ReadWrite.All"
			DisplayName = "Survey.ReadWrite.All"
			Id = "3ce57053-0ebf-42d8-bf7c-74161a450e4b"
			IsEnabled = $true
			Value = "Survey.ReadWrite.All"
		}
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

Update-MgServicePrincipal -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```