---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.group import Group
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Group(
	additional_data = {
			"members@odata_bind" : [
				"https://graph.microsoft.com/beta/directoryObjects/{id}",
				"https://graph.microsoft.com/beta/directoryObjects/{id}",
				"https://graph.microsoft.com/beta/directoryObjects/{id}",
			],
	}
)

result = await graph_client.groups.by_group_id('group-id').patch(request_body)


```