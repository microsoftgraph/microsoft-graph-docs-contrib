---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	DisplayName = "Block access to EXO non-trusted regions."
	State = "enabled"
	Conditions = @{
		ClientAppTypes = @(
			"all"
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
				"198ad66e-87b3-4157-85a3-8a7b51794ee9"
			)
		}
	}
	GrantControls = @{
		Operator = "OR"
		BuiltInControls = @(
			"block"
		)
	}
}

New-MgIdentityConditionalAccessPolicy -BodyParameter $params

```