---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = FilteringPolicy(
	name = "Block Social",
	policy_rules = [
		WebCategoryFilteringRule(
			odata_type = "#microsoft.graph.networkaccess.webCategoryFilteringRule",
			name = "Block Social",
			rule_type = NetworkDestinationType.WebCategory,
			destinations = [
				WebCategory(
					odata_type = "#microsoft.graph.networkaccess.webCategory",
					name = "SocialNetworking",
				),
			],
		),
	],
	action = FilteringPolicyAction.Block,
	description = "Block Social Sites",
	odata_type = "#microsoft.graph.networkaccess.filteringPolicy",
)

result = await graph_client.network_access.filtering_policies.post(request_body)


```