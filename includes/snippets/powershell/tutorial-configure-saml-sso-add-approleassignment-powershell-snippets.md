---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	principalId = "040f9599-7c0f-4f94-aa75-8394c4c6ea9b"
	principalType = "User"
	appRoleId = "3a84e31e-bffa-470f-b9e6-754a61e4dc63"
	resourceId = "a750f6cf-2319-464a-bcc3-456926736a91"
}

New-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```