---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.token_issuance_policy import TokenIssuancePolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TokenIssuancePolicy(
	definition = [
		"definition-value",
	],
	display_name = "displayName-value",
	is_organization_default = True,
)

result = await graph_client.policies.token_issuance_policies.post(request_body)


```