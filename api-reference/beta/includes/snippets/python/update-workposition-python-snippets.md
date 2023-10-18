---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = WorkPosition(
	is_current = True,
)

result = await graph_client.me.profile.positions.by_position_id('workPosition-id').patch(body = request_body)


```