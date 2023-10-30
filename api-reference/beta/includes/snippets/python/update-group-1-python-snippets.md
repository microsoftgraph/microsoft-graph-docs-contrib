---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	description = "Contoso Life v2.0",
	display_name = "Contoso Life Renewed",
)

result = await graph_client.groups.by_group_id('group-id').patch(request_body)


```