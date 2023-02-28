---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	PrincipalId = "b8afc02cb-4d62-4dba-b536-9f6d73e9e26"
	ResourceId = "89473e09-0737-41a1-a0c3-1418d6908bcd"
	AppRoleId = "00000000-0000-0000-0000-000000000000"
}

New-MgServicePrincipalAppRoleAssignedTo -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```