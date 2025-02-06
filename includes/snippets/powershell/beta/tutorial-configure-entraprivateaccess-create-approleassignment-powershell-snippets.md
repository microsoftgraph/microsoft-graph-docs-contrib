---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	principalId = "4628e7df-dff3-407c-a08f-75f08c0806dc"
	principalType = "User"
	appRoleId = "18d14569-c3bd-439b-9a66-3a2aee01d14f"
	resourceId = "a8cac399-cde5-4516-a674-819503c61313"
}

New-MgBetaServicePrincipalAppRoleAssignment -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```