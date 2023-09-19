---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Program(
	display_name = "testprogram3",
	description = "test description",
)

result = await graph_client.programs.post(body = request_body)


```