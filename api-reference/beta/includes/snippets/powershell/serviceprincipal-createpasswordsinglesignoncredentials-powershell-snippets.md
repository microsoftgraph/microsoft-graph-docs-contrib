---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	id = "5793aa3b-cca9-4794-679a240f8b58"
	credentials = @(
		@{
			fieldId = "param_username"
			value = "myusername"
			type = "username"
		}
		@{
			fieldId = "param_password"
			value = "pa$$w0rd"
			type = "password"
		}
	)
}

New-MgServicePrincipalPasswordSingleSignOnCredentials -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```