---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.copy_notebook_post_request_body import CopyNotebookPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = CopyNotebookPostRequestBody(
	group_id = "groupId-value",
	rename_as = "renameAs-value",
)

result = await graph_client.me.onenote.notebooks.by_notebook_id('notebook-id').copy_notebook.post(request_body)


```