---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	display_name = "New Managers March 2017",
	description = "New Managers training course for March 2017",
	group_types = [
		"Unified",
	],
	mail_enabled = True,
	mail_nickname = "newMan201703",
	security_enabled = False,
	additional_data = {
			"graphlearn_courses" : {
					"course_id" : "123",
					"course_name" : "New Managers",
					"course_type" : "Online",
			},
	}
)

result = await graph_client.groups.post(request_body)


```