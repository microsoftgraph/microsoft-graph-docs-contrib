---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.group_lifecycle_policy import GroupLifecyclePolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = GroupLifecyclePolicy(
	group_lifetime_in_days = 100,
	managed_group_types = "Selected",
	alternate_notification_emails = "admin@contoso.com",
)

result = await graph_client.group_lifecycle_policies.post(request_body)


```