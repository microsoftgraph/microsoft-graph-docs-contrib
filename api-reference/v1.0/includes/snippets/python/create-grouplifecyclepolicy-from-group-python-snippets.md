---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.group_lifecycle_policy import GroupLifecyclePolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GroupLifecyclePolicy(
	group_lifetime_in_days = 100,
	managed_group_types = "Selected",
	alternate_notification_emails = "admin@contoso.com",
)

result = await graph_client.group_lifecycle_policies.post(request_body)


```