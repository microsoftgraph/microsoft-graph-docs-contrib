---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	"@odata.type" = "#microsoft.graph.networkaccess.webCategoryFilteringRule"
	name = "Gambling and Storage cateogries"
	destinations = @(
		@{
			"@odata.type" = "#microsoft.graph.networkaccess.webCategory"
			name = "Gambling"
		}
		@{
			"@odata.type" = "#microsoft.graph.networkaccess.webCategory"
			name = "WebRepositoryAndStorage"
		}
	)
}

Update-MgBetaNetworkAccessFilteringPolicyRule -FilteringPolicyId $filteringPolicyId -PolicyRuleId $policyRuleId -BodyParameter $params

```