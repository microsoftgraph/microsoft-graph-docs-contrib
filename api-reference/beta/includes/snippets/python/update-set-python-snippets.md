---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Set(
	description = "mySet",
)

result = await graph_client.term_store.sets.by_set_id('set-id').patch(body = request_body)


```