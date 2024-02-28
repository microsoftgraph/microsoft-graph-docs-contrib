---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.filtering_policy import FilteringPolicy
from msgraph.generated.models.policy_rule import PolicyRule
from msgraph.generated.models.web_category_filtering_rule import WebCategoryFilteringRule
from msgraph.generated.models.rule_destination import RuleDestination
from msgraph.generated.models.web_category import WebCategory

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