---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.web_category_filtering_rule import WebCategoryFilteringRule
from msgraph.generated.models.rule_destination import RuleDestination
from msgraph.generated.models.web_category import WebCategory

graph_client = GraphServiceClient(credentials, scopes)

request_body = WebCategoryFilteringRule(
	odata_type = "#microsoft.graph.networkaccess.webCategoryFilteringRule",
	name = "Block Alcohol",
	rule_type = NetworkDestinationType.WebCategory,
	destinations = [
		WebCategory(
			odata_type = "#microsoft.graph.networkaccess.webCategory",
			name = "AlcoholAndTobacco",
		),
	],
)

result = await graph_client.network_access.filtering_policies.by_filtering_policy_id('filteringPolicy-id').policy_rules.post(request_body)


```