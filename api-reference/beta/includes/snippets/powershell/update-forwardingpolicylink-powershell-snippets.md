---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	"@odata.type" = "#microsoft.graph.networkaccess.forwardingPolicyLink"
	state = "enabled"
}

Update-MgBetaNetworkAccessForwardingProfilePolicy -ForwardingProfileId $forwardingProfileId -PolicyLinkId $policyLinkId -BodyParameter $params

```