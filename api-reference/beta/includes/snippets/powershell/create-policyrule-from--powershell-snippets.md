---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	name = "Block Social"
	policyRules = @(
		@{
			"@odata.type" = "#microsoft.graph.networkaccess.webCategoryFilteringRule"
			name = "Block Social"
			ruleType = "webCategory"
			destinations = @(
				@{
					"@odata.type" = "#microsoft.graph.networkaccess.webCategory"
					name = "SocialNetworking"
				}
			)
		}
	)
	action = "block"
	description = "Block Social Sites"
	"@odata.type" = "#microsoft.graph.networkaccess.filteringPolicy"
}

New-MgBetaNetworkAccessFilteringPolicy -BodyParameter $params

```