---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.auditLogQuery"
	displayName = "String"
	filterStartDateTime = [System.DateTime]::Parse("String (timestamp)")
	filterEndDateTime = [System.DateTime]::Parse("String (timestamp)")
	recordTypeFilters = @(
		"String"
	)
	keywordFilter = "String"
	serviceFilter = "String"
	operationFilters = @(
		"String"
	)
	userPrincipalNameFilters = @(
		"String"
	)
	ipAddressFilters = @(
		"String"
	)
	objectIdFilters = @(
		"String"
	)
	administrativeUnitIdFilters = @(
		"String"
	)
	status = "String"
}

New-MgBetaSecurityAuditLogQuery -BodyParameter $params

```