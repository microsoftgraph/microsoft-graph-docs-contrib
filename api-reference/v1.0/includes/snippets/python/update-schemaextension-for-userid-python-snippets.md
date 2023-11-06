---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	additional_data = {
			"ext55gb1l09_ms_learn_courses" : {
					"course_type" : "Admin",
			},
	}
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```