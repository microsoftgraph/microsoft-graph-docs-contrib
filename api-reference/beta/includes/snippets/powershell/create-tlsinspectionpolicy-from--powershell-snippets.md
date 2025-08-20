---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	name = "Default TLS Inspection Policy"
	description = "Policy for inspecting TLS traffic"
	settings = @{
		defaultAction = "bypass"
	}
}

New-MgBetaNetworkAccessTlInspectionPolicy -BodyParameter $params

```