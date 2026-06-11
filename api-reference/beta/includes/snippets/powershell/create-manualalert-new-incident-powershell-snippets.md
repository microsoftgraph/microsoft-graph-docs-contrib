---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.manualAlert"
	title = "Suspicious login from TOR exit node"
	description = "User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise."
	category = "InitialAccess"
	severity = "high"
	recommendedActions = "Reset user credentials, enable MFA, review recent user activity"
	mitreTechniques = @(
	"T1078"
)
entityDefinitions = @(
	@{
		entityType = "user"
		entityIdentifier = "userPrincipalName"
		identifierValue = "john.doe@contoso.com"
		role = "impacted"
	}
	@{
		entityType = "ip"
		entityIdentifier = "address"
		identifierValue = "185.220.101.50"
		role = "related"
	}
)
}

New-MgBetaSecurityAlertV2 -BodyParameter $params

```