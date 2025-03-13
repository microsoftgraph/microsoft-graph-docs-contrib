---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	displayName = "MyAppName"
	passwordCredentials = @(
		@{
			displayName = "Password name"
		}
	)
}

New-MgApplication -BodyParameter $params

```