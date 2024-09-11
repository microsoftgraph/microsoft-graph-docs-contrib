---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.token_lifetime_policy import TokenLifetimePolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TokenLifetimePolicy(
	definition = [
		"{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"5:30:00\"}}",
	],
	display_name = "Contoso token lifetime policy",
	is_organization_default = True,
)

result = await graph_client.policies.token_lifetime_policies.by_token_lifetime_policy_id('tokenLifetimePolicy-id').patch(request_body)


```