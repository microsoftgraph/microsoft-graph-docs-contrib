---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	adminEligibleSettings = @(
		@{
			ruleIdentifier = "ExpirationRule"
			setting = '{"permanentAssignment":false,"maximumGrantPeriodInMinutes":129600}'
		}
	)
}

Update-MgBetaPrivilegedAccessRoleSetting -PrivilegedAccessId $privilegedAccessId -GovernanceRoleSettingId $governanceRoleSettingId -BodyParameter $params

```