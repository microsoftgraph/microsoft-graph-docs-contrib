---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.onenote.sections.item.copy_to_notebook.copy_to_notebook_post_request_body import CopyToNotebookPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CopyToNotebookPostRequestBody(
	id = "id-value",
	group_id = "groupId-value",
	rename_as = "renameAs-value",
)

result = await graph_client.me.onenote.sections.by_onenote_section_id('onenoteSection-id').copy_to_notebook.post(request_body)


```