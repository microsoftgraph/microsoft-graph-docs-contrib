---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user import User

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	additional_data = {
			"extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable" : None,
			"extension_b7d8e648520f41d3b9c0fdeb91768a0a_job_group_tracker" : "E4",
	}
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```