---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CopyNotebookPostRequestBody(
	group_id = "groupId-value",
	rename_as = "renameAs-value",
)

result = await graph_client.me.onenote.notebooks.by_notebook_id('notebook-id').copy_notebook.post(body = request_body)


```