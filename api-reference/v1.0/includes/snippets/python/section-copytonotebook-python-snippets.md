---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CopyToNotebookPostRequestBody(
	id = "id-value",
	group_id = "groupId-value",
	rename_as = "renameAs-value",
)

result = await graph_client.me.onenote.sections.by_onenote_section_id('onenoteSection-id').copy_to_notebook.post(request_body)


```