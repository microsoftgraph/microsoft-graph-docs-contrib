---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	"@odata.type" = "#microsoft.graph.networkaccess.webCategoryFilteringRule"
	name = "Block Alcohol"
	ruleType = "webCategory"
	destinations = @(
		@{
			"@odata.type" = "#microsoft.graph.networkaccess.webCategory"
			name = "AlcoholAndTobacco"
		}
	)
}

New-MgBetaNetworkAccessFilteringPolicyRule -FilteringPolicyId $filteringPolicyId -BodyParameter $params

```