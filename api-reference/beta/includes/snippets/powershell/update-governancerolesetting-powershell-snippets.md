---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	AdminEligibleSettings = @(
		@{
			RuleIdentifier = "ExpirationRule"
			Setting = "{"permanentAssignment":false,"maximumGrantPeriodInMinutes":129600}"
		}
	)
}

Update-MgPrivilegedAccessRoleSetting -PrivilegedAccessId $privilegedAccessId -GovernanceRoleSettingId $governanceRoleSettingId -BodyParameter $params

```