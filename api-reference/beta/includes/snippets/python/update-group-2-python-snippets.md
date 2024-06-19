---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.group import Group
from msgraph_beta.generated.models.assigned_label import AssignedLabel

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