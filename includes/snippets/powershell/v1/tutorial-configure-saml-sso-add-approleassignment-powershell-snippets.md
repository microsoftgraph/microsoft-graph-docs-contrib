---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	principalId = "59bb3898-0621-4414-ac61-74f9d7201355"
	principalType = "User"
	appRoleId = "3a84e31e-bffa-470f-b9e6-754a61e4dc63"
	resourceId = "d3616293-fff8-4415-9f01-33b05dad1b46"
}

New-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```