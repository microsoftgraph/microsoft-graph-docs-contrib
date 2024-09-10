---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.web_category_filtering_rule import WebCategoryFilteringRule
from msgraph_beta.generated.models.network_destination_type import NetworkDestinationType
from msgraph_beta.generated.models.networkaccess.rule_destination import RuleDestination
from msgraph_beta.generated.models.networkaccess.web_category import WebCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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