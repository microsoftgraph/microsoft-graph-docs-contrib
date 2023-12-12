---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	assigned_labels = [
		AssignedLabel(
			label_id = "45cd0c48-c540-4358-ad79-a3658cdc5b88",
		),
	],
)

result = await graph_client.groups.by_group_id('group-id').patch(request_body)


```