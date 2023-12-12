---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	additional_data = {
			"graphlearn_courses" : {
					"course_id" : "123",
					"course_name" : "New Managers",
					"course_type" : "Online",
			},
	}
)

result = await graph_client.groups.by_group_id('group-id').patch(request_body)


```