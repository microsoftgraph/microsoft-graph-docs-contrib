---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	name = "My updated branch"
}

Update-MgBetaNetworkAccessConnectivityBranch -BranchSiteId $branchSiteId -BodyParameter $params

```