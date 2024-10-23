---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.authorization_policy import AuthorizationPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthorizationPolicy(
	enabled_preview_features = [
		"assignGroupsToRoles",
	],
)

result = await graph_client.policies.authorization_policy.by_authorization_policy_id('authorizationPolicy-id').patch(request_body)


```