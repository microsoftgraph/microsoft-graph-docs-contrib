---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	DisplayName = "Policy for risky sign-in"
	State = "enabled"
	Conditions = @{
		SignInRiskLevels = @(
			"high"
			"medium"
		)
		Applications = @{
			IncludeApplications = @(
				"All"
			)
		}
		Users = @{
			IncludeUsers = @(
				"4628e7df-dff3-407c-a08f-75f08c0806dc"
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