---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	DisplayName = "Access to EXO requires MFA"
	State = "enabled"
	Conditions = @{
		ClientAppTypes = @(
			"mobileAppsAndDesktopClients"
			"browser"
		)
		Applications = @{
			IncludeApplications = @(
				"00000002-0000-0ff1-ce00-000000000000"
			)
		}
		Users = @{
			IncludeGroups = @(
				"ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"
			)
		}
		Locations = @{
			IncludeLocations = @(
				"All"
			)
			ExcludeLocations = @(
				"AllTrusted"
			)
		}
	}
	GrantControls = @{
		Operator = "OR"
		BuiltInControls = @(
			"mfa"
		)
	}
}

New-MgIdentityConditionalAccessPolicy -BodyParameter $params

```