---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.filtering_policy import FilteringPolicy
from msgraph_beta.generated.models.networkaccess.policy_rule import PolicyRule
from msgraph_beta.generated.models.networkaccess.web_category_filtering_rule import WebCategoryFilteringRule
from msgraph_beta.generated.models.network_destination_type import NetworkDestinationType
from msgraph_beta.generated.models.networkaccess.rule_destination import RuleDestination
from msgraph_beta.generated.models.networkaccess.web_category import WebCategory
from msgraph_beta.generated.models.filtering_policy_action import FilteringPolicyAction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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