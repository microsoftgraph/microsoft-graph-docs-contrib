---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	PrincipalId = "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94"
	ResourceId = "7ea9e944-71ce-443d-811c-71e8047b557a"
	AppRoleId = "df021288-bdef-4463-88db-98f22de89214"
}

New-MgServicePrincipalAppRoleAssignedTo -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```