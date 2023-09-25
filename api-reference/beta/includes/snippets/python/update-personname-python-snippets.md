---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PersonName(
	nickname = "Kesha",
)

result = await graph_client.me.profile.names.by_name_id('personName-id').patch(body = request_body)


```