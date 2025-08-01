---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.authorization_policy import AuthorizationPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthorizationPolicy(
	allow_email_verified_users_to_join_organization = False,
)

result = await graph_client.policies.authorization_policy.patch(request_body)


```