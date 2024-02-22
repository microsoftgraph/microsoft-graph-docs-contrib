---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user import User

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	additional_data = {
			"extkmpdyld2_graph_learn_courses" : {
					"course_type" : "Instructor-led",
					"course_id" : None,
			},
	}
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```