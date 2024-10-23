---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Group(
	display_name = "New Managers March 2024",
	description = "New Managers training course for March 2024",
	group_types = [
		"Unified",
	],
	mail_enabled = True,
	mail_nickname = "newMan202403",
	security_enabled = False,
	additional_data = {
			"bellowscollege_courses" : {
					"course_id" : "123",
					"course_name" : "New Managers",
					"course_type" : "Online",
			},
	}
)

result = await graph_client.groups.post(request_body)


```