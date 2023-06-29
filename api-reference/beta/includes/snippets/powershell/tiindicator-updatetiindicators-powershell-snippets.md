---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	value = @(
		@{
			id = "c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4"
			additionalInformation = "mytest"
		}
		@{
			id = "e58c072b-c9bb-a5c4-34ce-eb69af44fb1e"
			additionalInformation = "test again"
		}
	)
}

Update-MgSecurityTiIndicatorMultiple -BodyParameter $params

```