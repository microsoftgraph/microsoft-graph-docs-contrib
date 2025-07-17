---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	"@odata.type" = "#microsoft.graph.networkaccess.crossTenantAccessSettings"
	networkPacketTaggingStatus = "enabled"
}

Update-MgBetaNetworkAccessSettingCrossTenantAccess -BodyParameter $params

```