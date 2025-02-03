---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.permission_grant_policy import PermissionGrantPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PermissionGrantPolicy(
	id = "my-custom-consent-policy",
	display_name = "Custom application consent policy",
	description = "A custom permission grant policy to customize conditions for granting consent.",
)

result = await graph_client.policies.permission_grant_policies.post(request_body)


```