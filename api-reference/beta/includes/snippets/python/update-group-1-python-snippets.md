---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.group import Group
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Group(
	description = "Contoso Life v2.0",
	display_name = "Contoso Life Renewed",
)

result = await graph_client.groups.by_group_id('group-id').patch(request_body)


```