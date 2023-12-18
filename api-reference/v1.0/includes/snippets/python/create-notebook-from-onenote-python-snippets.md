---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Notebook(
	display_name = "My Private notebook",
)

result = await graph_client.me.onenote.notebooks.post(request_body)


```