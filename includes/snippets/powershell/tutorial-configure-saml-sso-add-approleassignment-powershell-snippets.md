---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	PrincipalId = "040f9599-7c0f-4f94-aa75-8394c4c6ea9b"
	PrincipalType = "User"
	AppRoleId = "3a84e31e-bffa-470f-b9e6-754a61e4dc63"
	ResourceId = "a750f6cf-2319-464a-bcc3-456926736a91"
}

New-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```