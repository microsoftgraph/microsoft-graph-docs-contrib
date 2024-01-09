---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetNotebookFromWebUrlPostRequestBody(
	web_url = "webUrl value",
)

result = await graph_client.me.onenote.notebooks.get_notebook_from_web_url.post(request_body)


```