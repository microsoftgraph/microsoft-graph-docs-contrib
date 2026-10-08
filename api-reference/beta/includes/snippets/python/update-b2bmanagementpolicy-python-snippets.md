---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.b2b_management_policy import B2bManagementPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = B2bManagementPolicy(
	odata_type = "#microsoft.graph.b2bManagementPolicy",
	description = "Policy used for B2B features",
	display_name = "Policy1",
	definition = [
		"{'B2BManagementPolicy':{'Version':1}}",
	],
	is_organization_default = True,
)

result = await graph_client.policies.b2b_management_policies.by_b2b_management_policy_id('b2bManagementPolicy-id').patch(request_body)


```