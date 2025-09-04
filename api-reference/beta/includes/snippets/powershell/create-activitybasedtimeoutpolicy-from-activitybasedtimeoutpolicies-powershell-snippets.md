---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	definition = @(
	'{"ActivityBasedTimeoutPolicy":{"Version":1,"ApplicationPolicies":[{"ApplicationId":"default","WebSessionIdleTimeout":"00:05:00"}]}}'
)
displayName = "activityBasedTimeoutPolicies test"
isOrganizationDefault = $true
}

New-MgBetaPolicyActivityBasedTimeoutPolicy -BodyParameter $params

```