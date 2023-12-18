---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	appRoleAssignmentRequired = $true
}

Update-MgBetaServicePrincipal -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```