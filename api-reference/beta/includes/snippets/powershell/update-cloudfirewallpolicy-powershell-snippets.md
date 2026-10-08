---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	description = "Updated policy description"
}

Update-MgBetaNetworkAccessCloudFirewallPolicy -CloudFirewallPolicyId $cloudFirewallPolicyId -BodyParameter $params

```