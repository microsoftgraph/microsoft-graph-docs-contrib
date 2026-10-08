---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.policy_rule import PolicyRule
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PolicyRule(
	name = "Contoso TLS Rule 1 - Updated",
	additional_data = {
			"priority" : 200,
			"description" : "My TLS rule - Updated",
			"action" : "bypass",
			"settings" : {
					"status" : "disabled",
			},
			"matching_conditions" : {
					"destinations" : [
						{
								"@odata_type" : "#microsoft.graph.networkaccess.tlsInspectionFqdnDestination",
								"values" : [
									"www.contoso.test-updated.com",
									"*.contoso.org",
								],
						},
					],
			},
	}
)

result = await graph_client.network_access.tls_inspection_policies.by_tls_inspection_policy_id('tlsInspectionPolicy-id').policy_rules.by_policy_rule_id('policyRule-id').patch(request_body)


```