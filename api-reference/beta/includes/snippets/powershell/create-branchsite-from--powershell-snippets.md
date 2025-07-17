---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	name = "test branch - 11:50"
	country = "United States"
	region = "East US"
	bandwidthCapacity = 500
}

New-MgBetaNetworkAccessConnectivityBranch -BodyParameter $params

```