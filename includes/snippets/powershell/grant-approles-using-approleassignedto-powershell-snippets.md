---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	principalId = "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94"
	resourceId = "7ea9e944-71ce-443d-811c-71e8047b557a"
	appRoleId = "df021288-bdef-4463-88db-98f22de89214"
}

New-MgServicePrincipalAppRoleAssignedTo -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```