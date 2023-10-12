---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = GroupLifecyclePolicy(
	group_lifetime_in_days = 180,
	managed_group_types = "Selected",
	alternate_notification_emails = "admin@contoso.com",
)

result = await graph_client.group_lifecycle_policies.by_group_lifecycle_policie_id('groupLifecyclePolicy-id').patch(body = request_body)


```