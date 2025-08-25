---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	state = "disabled"
}

Update-MgBetaNetworkAccessFilteringProfilePolicy -FilteringProfileId $filteringProfileId -PolicyLinkId $policyLinkId -BodyParameter $params

```