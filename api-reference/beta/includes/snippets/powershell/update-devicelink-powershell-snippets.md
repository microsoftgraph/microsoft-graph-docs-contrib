---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	name = "Backup Link"
}

Update-MgBetaNetworkAccessConnectivityBranchDeviceLink -BranchSiteId $branchSiteId -DeviceLinkId $deviceLinkId -BodyParameter $params

```