---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	Id = "5793aa3b-cca9-4794-679a240f8b58"
	Credentials = @(
		@{
			FieldId = "param_username"
			Value = "myusername"
			Type = "username"
		}
		@{
			FieldId = "param_password"
			Value = "pa$$w0rd"
			Type = "password"
		}
	)
}

New-MgServicePrincipalPasswordSingleSignOnCredentials -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```