---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	name = "Login with Amazon"
	type = "Amazon"
	clientId = "56433757-cadd-4135-8431-2c9e3fd68ae8"
	clientSecret = "000000000000"
}

New-MgIdentityProvider -BodyParameter $params

```