---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.copy_to_notebook_post_request_body import CopyToNotebookPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = CopyToNotebookPostRequestBody(
	id = "id-value",
	group_id = "groupId-value",
	rename_as = "renameAs-value",
)

result = await graph_client.me.onenote.sections.by_onenote_section_id('onenoteSection-id').copy_to_notebook.post(request_body)


```