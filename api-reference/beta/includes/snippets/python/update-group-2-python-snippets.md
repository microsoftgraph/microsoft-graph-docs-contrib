---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.group import Group
from msgraph_beta.generated.models.assigned_label import AssignedLabel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Group(
	assigned_labels = [
		AssignedLabel(
			label_id = "45cd0c48-c540-4358-ad79-a3658cdc5b88",
		),
	],
)

result = await graph_client.groups.by_group_id('group-id').patch(request_body)


```