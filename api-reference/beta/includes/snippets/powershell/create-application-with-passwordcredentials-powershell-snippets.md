---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	displayName = "MyAppName"
	passwordCredentials = @(
		@{
			displayName = "Password name"
		}
	)
}

New-MgBetaApplication -BodyParameter $params

```