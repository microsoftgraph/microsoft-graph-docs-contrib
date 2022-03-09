---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	ClientId = "clientId-value"
	ConsentType = "consentType-value"
	PrincipalId = "principalId-value"
	ResourceId = "resourceId-value"
	Scope = "scope-value"
	StartTime = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
	ExpiryTime = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
}

New-MgOauth2PermissionGrant -BodyParameter $params

```