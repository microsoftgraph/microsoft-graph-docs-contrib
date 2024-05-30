---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	clientId = "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94"
	consentType = "Principal"
	resourceId = "7ea9e944-71ce-443d-811c-71e8047b557a"
	principalId = "3fbd929d-8c56-4462-851e-0eb9a7b3a2a5"
	scope = "User.Read.All Group.Read.All"
}

New-MgOauth2PermissionGrant -BodyParameter $params

```