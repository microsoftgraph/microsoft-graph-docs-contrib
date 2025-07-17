---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.onenote.notebooks.get_notebook_from_web_url.get_notebook_from_web_url_post_request_body import GetNotebookFromWebUrlPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetNotebookFromWebUrlPostRequestBody(
	web_url = "webUrl value",
)

result = await graph_client.me.onenote.notebooks.get_notebook_from_web_url.post(request_body)


```