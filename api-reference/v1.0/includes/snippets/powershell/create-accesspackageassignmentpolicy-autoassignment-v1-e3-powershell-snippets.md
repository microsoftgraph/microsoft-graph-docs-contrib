---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "Sales department users"
	description = "All users from sales department"
	allowedTargetScope = "specificDirectoryUsers"
	specificAllowedTargets = @(
		@{
			"@odata.type" = "#microsoft.graph.attributeRuleMembers"
			description = "Membership rule for all users from sales department"
			membershipRule = "(user.department -eq "Sales")"
		}
	)
	automaticRequestSettings = @{
		requestAccessForAllowedTargets = $true
	}
	accessPackage = @{
		id = "8a36831e-1527-4b2b-aff2-81259a8d8e76"
	}
}

New-MgEntitlementManagementAssignmentPolicy -BodyParameter $params

```