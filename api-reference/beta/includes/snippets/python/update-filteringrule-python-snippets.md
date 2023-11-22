---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = WebCategoryFilteringRule(
	odata_type = "#microsoft.graph.networkaccess.webCategoryFilteringRule",
	name = "Gambling and Storage cateogries",
	destinations = [
		WebCategory(
			odata_type = "#microsoft.graph.networkaccess.webCategory",
			name = "Gambling",
		),
		WebCategory(
			odata_type = "#microsoft.graph.networkaccess.webCategory",
			name = "WebRepositoryAndStorage",
		),
	],
)

result = await graph_client.network_access.filtering_policies.by_filtering_policy_id('filteringPolicy-id').policy_rules.by_policy_rule_id('policyRule-id').patch(request_body)


```