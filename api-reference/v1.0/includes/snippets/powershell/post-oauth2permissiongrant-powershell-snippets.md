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
}

New-MgOauth2PermissionGrant -BodyParameter $params

```