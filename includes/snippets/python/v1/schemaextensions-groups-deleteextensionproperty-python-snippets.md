---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	additional_data = {
			"bellowscollege_courses" : None,
	}
)

result = await graph_client.groups.by_group_id('group-id').patch(request_body)


```