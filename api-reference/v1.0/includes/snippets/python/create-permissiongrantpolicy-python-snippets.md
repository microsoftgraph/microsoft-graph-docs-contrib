---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.permission_grant_policy import PermissionGrantPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = PermissionGrantPolicy(
	id = "my-custom-consent-policy",
	display_name = "Custom application consent policy",
	description = "A custom permission grant policy to customize conditions for granting consent.",
)

result = await graph_client.policies.permission_grant_policies.post(request_body)


```