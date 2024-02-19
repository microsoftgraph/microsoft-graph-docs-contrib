---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.work_position import WorkPosition

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkPosition(
	is_current = True,
)

result = await graph_client.me.profile.positions.by_work_position_id('workPosition-id').patch(request_body)


```