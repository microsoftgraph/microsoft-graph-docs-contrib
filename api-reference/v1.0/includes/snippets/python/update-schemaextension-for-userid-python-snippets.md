---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.user import User
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = User(
	additional_data = {
			"ext55gb1l09_ms_learn_courses" : {
					"course_type" : "Admin",
			},
	}
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```