---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = GetNotebookFromWebUrlPostRequestBody(
	web_url = "webUrl value",
)

result = await graph_client.me.onenote.notebooks.get_notebook_from_web_url.post(request_body)


```