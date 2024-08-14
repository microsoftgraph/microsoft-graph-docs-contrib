---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	name = "Bellevue branch w/ fwd profile"
	region = "canadaEast"
	forwardingProfiles = @(
		@{
			id = "1adaf535-1e31-4e14-983f-2270408162bf"
		}
	)
}

New-MgBetaNetworkAccessConnectivityRemoteNetwork -BodyParameter $params

```